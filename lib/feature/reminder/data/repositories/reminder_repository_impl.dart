import 'dart:developer' as dev;
import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/services/notification_service.dart';
import 'package:patient_portal/feature/reminder/data/datasources/reminder_local_data_source.dart';
import 'package:patient_portal/feature/reminder/data/models/reminder_model.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/repositories/reminder_repository.dart';

class ReminderRepositoryImpl implements ReminderRepository {
  final ReminderLocalDataSource localDataSource;
  final NotificationService notificationService;

  ReminderRepositoryImpl({
    required this.localDataSource,
    required this.notificationService,
  });

  @override
  Future<Either<Failure, Reminder>> scheduleReminder(Reminder reminder) async {
    try {
      // 1. Enforce domain invariant: one active reminder per (targetId, type).
      final existing =
          await localDataSource.getRemindersForTarget(reminder.targetId);
      for (final old in existing.where((r) => r.type == reminder.type.value)) {
        if (old.id != reminder.id) {
          await notificationService.cancelNotification(old.id);
          await localDataSource.removeReminder(old.id);
        }
      }

      // 2. Schedule FIRST and propagate real outcome.
      final outcome = await notificationService.scheduleAlarmNotification(
        id: reminder.id,
        title: reminder.title,
        body: reminder.body,
        scheduledDateTime: reminder.scheduledDateTime,
        payload: reminder.payload,
      );

      return outcome.fold(
        Left.new,
        (_) async {
          await localDataSource
              .saveReminder(ReminderModel.fromEntity(reminder));
          return Right(reminder);
        },
      );
    } on Object catch (e, s) {
      dev.log(
        'scheduleReminder failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_schedule_failed'));
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelReminder(int reminderId) async {
    try {
      await notificationService.cancelNotification(reminderId);
      await localDataSource.removeReminder(reminderId);
      return const Right(unit);
    } on Object catch (e, s) {
      dev.log(
        'cancelReminder failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_cancel_failed'));
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelRemindersForTarget(
    String targetId,
    ReminderType type,
  ) async {
    try {
      final reminders = await localDataSource.getRemindersForTarget(targetId);
      for (final r in reminders) {
        if (r.type == type.value) {
          await notificationService.cancelNotification(r.id);
        }
      }
      await localDataSource.removeRemindersForTarget(targetId, type.value);
      return const Right(unit);
    } on Object catch (e, s) {
      dev.log(
        'cancelRemindersForTarget failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_cancel_target_failed'));
    }
  }

  @override
  Future<Either<Failure, List<Reminder>>> getRemindersForTarget(
    String targetId,
  ) async {
    try {
      final models = await localDataSource.getRemindersForTarget(targetId);
      return Right(models.map((m) => m.toEntity()).toList());
    } on Object catch (e, s) {
      dev.log(
        'getRemindersForTarget failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_load_target_failed'));
    }
  }

  @override
  Future<Either<Failure, List<Reminder>>> getAllActiveReminders() async {
    try {
      final models = await localDataSource.getAllReminders();
      final active = models
          .map((m) => m.toEntity())
          .where(
            (r) =>
                r.isActive &&
                r.targetDateTime.isAfter(
                  DateTime.now().subtract(const Duration(hours: 2)),
                ),
          )
          .toList();
      return Right(active);
    } on Object catch (e, s) {
      dev.log(
        'getAllActiveReminders failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_fetch_active_failed'));
    }
  }

  @override
  Future<Either<Failure, Unit>> restorePendingReminders() async {
    try {
      final models = await localDataSource.getAllReminders();
      for (final m in models) {
        final reminder = m.toEntity();
        if (reminder.isActive &&
            reminder.scheduledDateTime.isAfter(DateTime.now())) {
          await notificationService.scheduleAlarmNotification(
            id: reminder.id,
            title: reminder.title,
            body: reminder.body,
            scheduledDateTime: reminder.scheduledDateTime,
            payload: reminder.payload,
          );
        }
      }
      return const Right(unit);
    } on Object catch (e, s) {
      dev.log(
        'restorePendingReminders failed',
        error: e,
        stackTrace: s,
        name: 'ReminderRepositoryImpl',
      );
      return const Left(CacheFailure('reminder_restore_failed'));
    }
  }
}
