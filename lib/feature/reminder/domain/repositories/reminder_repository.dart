import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';

abstract class ReminderRepository {
  Future<Either<Failure, Reminder>> scheduleReminder(Reminder reminder);
  Future<Either<Failure, Unit>> cancelReminder(int reminderId);
  Future<Either<Failure, Unit>> cancelRemindersForTarget(String targetId, ReminderType type);
  Future<Either<Failure, List<Reminder>>> getRemindersForTarget(String targetId);
  Future<Either<Failure, List<Reminder>>> getAllActiveReminders();
  Future<Either<Failure, Unit>> restorePendingReminders();
}
