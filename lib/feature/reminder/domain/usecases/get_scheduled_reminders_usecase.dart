import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/repositories/reminder_repository.dart';

class GetScheduledRemindersUseCase {
  final ReminderRepository repository;

  GetScheduledRemindersUseCase(this.repository);

  Future<Either<Failure, List<Reminder>>> call(String appointmentId) async {
    return repository.getRemindersForTarget(appointmentId);
  }

  Future<Either<Failure, List<Reminder>>> getAllActive() async {
    return repository.getAllActiveReminders();
  }
}
