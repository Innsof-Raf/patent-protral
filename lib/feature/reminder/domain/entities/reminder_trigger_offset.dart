import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

enum ReminderTriggerOffset {
  oneDayBefore(1440),
  twoHoursBefore(120),
  oneHourBefore(60),
  thirtyMinsBefore(30),
  fifteenMinsBefore(15),
  custom(0);

  final int minutes;

  const ReminderTriggerOffset(this.minutes);

  static ReminderTriggerOffset fromMinutes(int mins) {
    return ReminderTriggerOffset.values.firstWhere(
      (e) => e.minutes == mins,
      orElse: () => ReminderTriggerOffset.custom,
    );
  }

  Duration get duration => Duration(minutes: minutes);

  String getLocalizedLabel(BuildContext context) {
    switch (this) {
      case ReminderTriggerOffset.oneDayBefore:
        return context.lang.reminderOffset1Day;
      case ReminderTriggerOffset.twoHoursBefore:
        return context.lang.reminderOffset2Hours;
      case ReminderTriggerOffset.oneHourBefore:
        return context.lang.reminderOffset1Hour;
      case ReminderTriggerOffset.thirtyMinsBefore:
        return context.lang.reminderOffset30Mins;
      case ReminderTriggerOffset.fifteenMinsBefore:
        return context.lang.reminderOffset15Mins;
      case ReminderTriggerOffset.custom:
        return context.lang.reminderOffsetCustom;
    }
  }
}
