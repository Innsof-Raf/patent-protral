import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';

class ReminderModel {
  static const int schemaVersion = 2;

  final int id;
  final String targetId;
  final String type;
  final String title;
  final String body;
  final String scheduledDateTime;
  final String targetDateTime;
  final int offsetMinutes;
  final String payload;
  final bool isActive;

  ReminderModel({
    required this.id,
    required this.targetId,
    required this.type,
    required this.title,
    required this.body,
    required this.scheduledDateTime,
    required this.targetDateTime,
    required this.offsetMinutes,
    required this.payload,
    required this.isActive,
  });

  factory ReminderModel.fromEntity(Reminder entity) {
    return ReminderModel(
      id: entity.id,
      targetId: entity.targetId,
      type: entity.type.value,
      title: entity.title,
      body: entity.body,
      scheduledDateTime: entity.scheduledDateTime.toUtc().toIso8601String(),
      targetDateTime: entity.targetDateTime.toUtc().toIso8601String(),
      offsetMinutes: entity.offsetMinutes,
      payload: entity.payload,
      isActive: entity.isActive,
    );
  }

  Reminder toEntity() {
    return Reminder(
      id: id,
      targetId: targetId,
      type: ReminderType.fromString(type),
      title: title,
      body: body,
      scheduledDateTime: DateTime.parse(scheduledDateTime).toLocal(),
      targetDateTime: DateTime.parse(targetDateTime).toLocal(),
      offsetMinutes: offsetMinutes,
      payload: payload,
      isActive: isActive,
    );
  }

  Map<String, dynamic> toJson() => {
        'v': schemaVersion,
        'id': id,
        'targetId': targetId,
        'type': type,
        'title': title,
        'body': body,
        'scheduledDateTime': scheduledDateTime,
        'targetDateTime': targetDateTime,
        'offsetMinutes': offsetMinutes,
        'payload': payload,
        'isActive': isActive,
      };

  factory ReminderModel.fromJson(Map<String, dynamic> json) => ReminderModel(
        id: json['id'] as int,
        targetId: json['targetId'] as String,
        type: json['type'] as String,
        title: json['title'] as String,
        body: json['body'] as String,
        scheduledDateTime: json['scheduledDateTime'] as String,
        targetDateTime: json['targetDateTime'] as String,
        offsetMinutes: json['offsetMinutes'] as int,
        payload: json['payload'] as String? ?? '',
        isActive: json['isActive'] as bool? ?? true,
      );

  static ReminderModel? tryFromJson(Map<String, dynamic> json) {
    try {
      final id = json['id'];
      final scheduled = json['scheduledDateTime'];
      final target = json['targetDateTime'];
      if (id is! int || scheduled is! String || target is! String) return null;
      if (DateTime.tryParse(scheduled) == null) return null;
      if (DateTime.tryParse(target) == null) return null;

      return ReminderModel(
        id: id,
        targetId: json['targetId'] as String? ?? '',
        type: json['type'] as String? ?? ReminderType.appointment.value,
        title: json['title'] as String? ?? '',
        body: json['body'] as String? ?? '',
        scheduledDateTime: scheduled,
        targetDateTime: target,
        offsetMinutes: json['offsetMinutes'] as int? ?? 0,
        payload: json['payload'] as String? ?? '',
        isActive: json['isActive'] as bool? ?? true,
      );
    } on Object {
      return null;
    }
  }
}
