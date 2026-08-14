import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class ReminderPayload {
  final int reminderId;
  final String targetId;
  final String type;

  const ReminderPayload({
    required this.reminderId,
    required this.targetId,
    this.type = 'appointment',
  });

  String encode() => jsonEncode({
        'type': type,
        'reminderId': reminderId,
        'targetId': targetId,
      });

  static ReminderPayload? tryDecode(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    try {
      final map = jsonDecode(raw);
      if (map is! Map<String, dynamic>) return null;
      final id = map['reminderId'];
      final target = map['targetId'];
      final type = map['type'] as String? ?? 'appointment';
      if (id is! int || target is! String) return null;
      return ReminderPayload(
        reminderId: id,
        targetId: target,
        type: type,
      );
    } on FormatException {
      return null;
    } on TypeError {
      return null;
    }
  }
}

class NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void Function(String? payload)? onNotificationTap;
  void Function(String? payload)? onSnoozeAction;

  static const String _channelId = 'appointment_alarms_v4';
  static const String _channelName = 'Appointment Alarms';
  static const String _channelDescription =
      'High priority ringing alarm notifications for doctor appointments';

  Future<void> init() async {
    try {
      tz.initializeTimeZones();

      const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
      const iosInit = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      const initSettings = InitializationSettings(
        android: androidInit,
        iOS: iosInit,
      );

      await _notificationsPlugin.initialize(
        initSettings,
        onDidReceiveNotificationResponse: (response) {
          dev.log(
            'Notification action triggered: actionId=${response.actionId}, payload=${response.payload}',
            name: 'NotificationService',
          );
          if (response.actionId == 'snooze_action') {
            onSnoozeAction?.call(response.payload);
          } else if (response.payload != null) {
            onNotificationTap?.call(response.payload);
          }
        },
      );

      const androidChannel = AndroidNotificationChannel(
        _channelId,
        _channelName,
        description: _channelDescription,
        importance: Importance.max,
        playSound: true,
        enableVibration: true,
        audioAttributesUsage: AudioAttributesUsage.alarm,
      );

      await _notificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(androidChannel);

      dev.log(
        'NotificationService initialized cleanly with channel $_channelId',
        name: 'NotificationService',
      );
    } catch (e, stackTrace) {
      dev.log(
        'Failed to initialize NotificationService',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
    }
  }

  Future<bool> requestPermissions() async {
    try {
      bool granted = true;
      final androidImplementation = _notificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      if (androidImplementation != null) {
        final notifGranted =
            await androidImplementation.requestNotificationsPermission() ??
                false;
        final alarmGranted =
            await androidImplementation.requestExactAlarmsPermission() ??
                false;
        granted = notifGranted && alarmGranted;
      }

      final iosImplementation = _notificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>();

      if (iosImplementation != null) {
        final iosGranted = await iosImplementation.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            ) ??
            false;
        granted = granted && iosGranted;
      }

      return granted;
    } catch (e, stackTrace) {
      dev.log(
        'Failed to request notification permissions',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
      return false;
    }
  }

  Future<Either<Failure, Unit>> scheduleAlarmNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDateTime,
    String? payload,
  }) async {
    if (!scheduledDateTime.isAfter(DateTime.now())) {
      dev.log(
        'Scheduled time $scheduledDateTime is in the past. Skipping notification.',
        name: 'NotificationService',
      );
      return const Left(ValidationFailure('reminder_time_in_past'));
    }

    final androidImplementation = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    if (androidImplementation != null) {
      final notificationsEnabled =
          await androidImplementation.areNotificationsEnabled() ?? false;
      if (!notificationsEnabled) {
        return const Left(PermissionFailure('notifications_disabled'));
      }
      final canExact =
          await androidImplementation.canScheduleExactNotifications() ?? false;
      if (!canExact) {
        return const Left(PermissionFailure('exact_alarm_denied'));
      }
    }

    try {
      final scheduledTz = tz.TZDateTime.from(scheduledDateTime, tz.local);

      final androidDetails = AndroidNotificationDetails(
        _channelId,
        _channelName,
        channelDescription: _channelDescription,
        importance: Importance.max,
        priority: Priority.max,
        playSound: true,
        enableVibration: true,
        audioAttributesUsage: AudioAttributesUsage.alarm,
        category: AndroidNotificationCategory.alarm,
        fullScreenIntent: true,
        visibility: NotificationVisibility.public,
        additionalFlags: Int32List.fromList([4]),
        actions: const <AndroidNotificationAction>[
          AndroidNotificationAction(
            'snooze_action',
            'Snooze (10 mins)',
            showsUserInterface: true,
          ),
          AndroidNotificationAction(
            'dismiss_action',
            'Dismiss',
            cancelNotification: true,
            showsUserInterface: false,
          ),
        ],
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        interruptionLevel: InterruptionLevel.timeSensitive,
      );

      final details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduledTz,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: payload,
      );

      dev.log(
        'Ringing Alarm notification scheduled successfully (ID: $id) for $scheduledDateTime',
        name: 'NotificationService',
      );
      return const Right(unit);
    } on PlatformException catch (e, stackTrace) {
      dev.log(
        'Failed to schedule notification (ID: $id)',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
      return Left(NotificationFailure('reminder_schedule_rejected'));
    } catch (e, stackTrace) {
      dev.log(
        'Unexpected error scheduling notification (ID: $id)',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
      return Left(NotificationFailure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> cancelNotification(int id) async {
    try {
      await _notificationsPlugin.cancel(id);
      dev.log('Cancelled notification ID: $id', name: 'NotificationService');
      return const Right(unit);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to cancel notification (ID: $id)',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
      return Left(NotificationFailure('Failed to cancel notification'));
    }
  }

  Future<Either<Failure, Unit>> cancelAll() async {
    try {
      await _notificationsPlugin.cancelAll();
      dev.log('Cancelled all notifications', name: 'NotificationService');
      return const Right(unit);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to cancel all notifications',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
      return Left(NotificationFailure('Failed to cancel all notifications'));
    }
  }

  Future<void> checkAppLaunchNotification() async {
    try {
      final details =
          await _notificationsPlugin.getNotificationAppLaunchDetails();
      if (details != null &&
          details.didNotificationLaunchApp &&
          details.notificationResponse?.payload != null) {
        onNotificationTap?.call(details.notificationResponse!.payload);
      }
    } catch (e, stackTrace) {
      dev.log(
        'Failed to check app launch notification',
        error: e,
        stackTrace: stackTrace,
        name: 'NotificationService',
      );
    }
  }
}
