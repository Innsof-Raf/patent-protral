import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';

/// Deterministic 31-bit notification ID generator.
///
/// Replaces `(appointment.id.hashCode ^ offsetMinutes)`, which collided
/// trivially: appointment 1 @15min and appointment 16 @30min both yielded 14,
/// causing zonedSchedule to overwrite one alarm and saveReminder to delete
/// the other's record.
abstract final class ReminderId {
  static const int _fnvOffset = 0x811C9DC5;
  static const int _fnvPrime = 0x01000193;
  static const int _maxInt32 = 0x7FFFFFFF;

  static int forTarget({
    required String targetId,
    required ReminderType type,
    required int offsetMinutes,
  }) {
    final seed = '${type.value}:$targetId:$offsetMinutes';
    var hash = _fnvOffset;
    for (final unit in seed.codeUnits) {
      hash = ((hash ^ unit) * _fnvPrime) & 0xFFFFFFFF;
    }
    final id = hash & _maxInt32;
    return id == 0 ? 1 : id; // 0 is reserved by some notification managers
  }
}
