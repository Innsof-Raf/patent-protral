import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/reminder/domain/repositories/reminder_repository.dart';

class RestorePendingRemindersUseCase {
  final ReminderRepository repository;

  RestorePendingRemindersUseCase(this.repository);

  Future<Either<Failure, Unit>> call() async {
    return repository.restorePendingReminders();
  }
}
