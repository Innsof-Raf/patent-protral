import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/services/notification_service.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/cancel_appointment_reminder_usecase.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/get_scheduled_reminders_usecase.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/params/schedule_appointment_reminder_params.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/restore_pending_reminders_usecase.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/schedule_appointment_reminder_usecase.dart';
import 'package:patient_portal/feature/reminder/presentation/cubit/reminder_state.dart';

class ReminderCubit extends Cubit<ReminderState> {
  final ScheduleAppointmentReminderUseCase scheduleAppointmentReminderUseCase;
  final CancelAppointmentReminderUseCase cancelAppointmentReminderUseCase;
  final GetScheduledRemindersUseCase getScheduledRemindersUseCase;
  final RestorePendingRemindersUseCase restorePendingRemindersUseCase;

  ReminderCubit({
    required this.scheduleAppointmentReminderUseCase,
    required this.cancelAppointmentReminderUseCase,
    required this.getScheduledRemindersUseCase,
    required this.restorePendingRemindersUseCase,
  }) : super(const ReminderState());

  Future<void> loadAllReminders() async {
    if (isClosed) return;
    emit(state.copyWith(status: ReminderStatus.loading));

    final result = await getScheduledRemindersUseCase.getAllActive();
    if (isClosed) return;

    result.fold(
      (failure) => emit(state.copyWith(
        status: ReminderStatus.failure,
        errorKey: failure.message,
      )),
      (reminders) {
        final Map<String, List<Reminder>> map = {};
        for (final r in reminders) {
          map.putIfAbsent(r.targetId, () => []).add(r);
        }
        emit(state.copyWith(
          status: ReminderStatus.ready,
          remindersByTarget: map,
          errorKey: null,
        ));
      },
    );
  }

  Future<void> scheduleReminder(
    ScheduleAppointmentReminderParams params,
  ) async {
    if (isClosed) return;
    emit(state.copyWith(isMutating: true, errorKey: null));

    final result = await scheduleAppointmentReminderUseCase(params);
    if (isClosed) return;

    result.fold(
      (failure) => emit(state.copyWith(
        isMutating: false,
        status: ReminderStatus.ready,
        errorKey: failure.message,
      )),
      (reminder) {
        final next =
            Map<String, List<Reminder>>.from(state.remindersByTarget);
        next[params.targetId] = [
          ...?next[params.targetId]?.where(
            (r) => r.offsetMinutes != params.offsetMinutes,
          ),
          reminder,
        ];
        emit(state.copyWith(
          status: ReminderStatus.ready,
          remindersByTarget: next,
          isMutating: false,
          errorKey: null,
        ));
      },
    );
  }

  Future<void> snooze({
    required ReminderPayload payload,
    required Duration duration,
  }) async {
    if (isClosed) return;
    final snoozeTime = DateTime.now().add(duration);
    final params = ScheduleAppointmentReminderParams(
      targetId: payload.targetId,
      targetDateTime: snoozeTime.add(const Duration(minutes: 10)),
      doctorName: 'Doctor',
      offsetMinutes: duration.inMinutes,
    );
    await scheduleReminder(params);
  }

  Future<void> cancelReminderForAppointment({
    required String appointmentId,
    int? reminderId,
  }) async {
    if (isClosed) return;
    emit(state.copyWith(isMutating: true, errorKey: null));

    final result = await cancelAppointmentReminderUseCase(
      appointmentId: appointmentId,
      reminderId: reminderId,
    );
    if (isClosed) return;

    result.fold(
      (failure) => emit(state.copyWith(
        isMutating: false,
        status: ReminderStatus.ready,
        errorKey: failure.message,
      )),
      (_) {
        final next =
            Map<String, List<Reminder>>.from(state.remindersByTarget);
        if (reminderId != null) {
          final currentList =
              List<Reminder>.from(next[appointmentId] ?? []);
          currentList.removeWhere((r) => r.id == reminderId);
          if (currentList.isEmpty) {
            next.remove(appointmentId);
          } else {
            next[appointmentId] = currentList;
          }
        } else {
          next.remove(appointmentId);
        }
        emit(state.copyWith(
          status: ReminderStatus.ready,
          remindersByTarget: next,
          isMutating: false,
          errorKey: null,
        ));
      },
    );
  }

  Future<void> restoreReminders() async {
    if (isClosed) return;
    await restorePendingRemindersUseCase();
    if (isClosed) return;
    await loadAllReminders();
  }
}
