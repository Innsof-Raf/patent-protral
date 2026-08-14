import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/services/notification_service.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder_id.dart';
import 'package:patient_portal/feature/reminder/domain/repositories/reminder_repository.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/params/schedule_appointment_reminder_params.dart';

class ScheduleAppointmentReminderUseCase {
  final ReminderRepository repository;

  ScheduleAppointmentReminderUseCase(this.repository);

  Future<Either<Failure, Reminder>> call(
    ScheduleAppointmentReminderParams params,
  ) async {
    final scheduledTime = params.targetDateTime.subtract(
      Duration(minutes: params.offsetMinutes),
    );

    if (scheduledTime.isBefore(DateTime.now())) {
      return const Left(ValidationFailure('reminder_time_in_past'));
    }

    final reminderId = ReminderId.forTarget(
      targetId: params.targetId,
      type: ReminderType.appointment,
      offsetMinutes: params.offsetMinutes,
    );

    final payload = ReminderPayload(
      reminderId: reminderId,
      targetId: params.targetId,
      type: ReminderType.appointment.value,
    ).encode();

    final reminder = Reminder(
      id: reminderId,
      targetId: params.targetId,
      type: ReminderType.appointment,
      title: 'Appointment Reminder',
      body:
          'You have an appointment with ${params.doctorName} at ${_formatTime(params.targetDateTime)}.',
      scheduledDateTime: scheduledTime,
      targetDateTime: params.targetDateTime,
      offsetMinutes: params.offsetMinutes,
      payload: payload,
      isActive: true,
    );

    return repository.scheduleReminder(reminder);
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour == 0
        ? 12
        : (dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour);
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final period = dateTime.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }
}
