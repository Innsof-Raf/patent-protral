import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/repositories/reminder_repository.dart';

class CancelAppointmentReminderUseCase {
  final ReminderRepository repository;

  CancelAppointmentReminderUseCase(this.repository);

  Future<Either<Failure, Unit>> call({
    required String appointmentId,
    int? reminderId,
  }) async {
    if (reminderId != null) {
      return repository.cancelReminder(reminderId);
    } else {
      return repository.cancelRemindersForTarget(appointmentId, ReminderType.appointment);
    }
  }
}
