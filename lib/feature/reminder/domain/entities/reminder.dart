import 'package:equatable/equatable.dart';

enum ReminderType {
  appointment,
  medication,
  vitals,
  labTest;

  String get value => name;

  static ReminderType fromString(String str) {
    return ReminderType.values.firstWhere(
      (e) => e.name.toLowerCase() == str.toLowerCase(),
      orElse: () => ReminderType.appointment,
    );
  }
}

class Reminder extends Equatable {
  final int id;
  final String targetId;
  final ReminderType type;
  final String title;
  final String body;
  final DateTime scheduledDateTime;
  final DateTime targetDateTime;
  final int offsetMinutes;
  final String payload;
  final bool isActive;

  const Reminder({
    required this.id,
    required this.targetId,
    required this.type,
    required this.title,
    required this.body,
    required this.scheduledDateTime,
    required this.targetDateTime,
    required this.offsetMinutes,
    required this.payload,
    this.isActive = true,
  });

  Reminder copyWith({
    int? id,
    String? targetId,
    ReminderType? type,
    String? title,
    String? body,
    DateTime? scheduledDateTime,
    DateTime? targetDateTime,
    int? offsetMinutes,
    String? payload,
    bool? isActive,
  }) {
    return Reminder(
      id: id ?? this.id,
      targetId: targetId ?? this.targetId,
      type: type ?? this.type,
      title: title ?? this.title,
      body: body ?? this.body,
      scheduledDateTime: scheduledDateTime ?? this.scheduledDateTime,
      targetDateTime: targetDateTime ?? this.targetDateTime,
      offsetMinutes: offsetMinutes ?? this.offsetMinutes,
      payload: payload ?? this.payload,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  List<Object?> get props => [
        id,
        targetId,
        type,
        title,
        body,
        scheduledDateTime,
        targetDateTime,
        offsetMinutes,
        payload,
        isActive,
      ];
}
