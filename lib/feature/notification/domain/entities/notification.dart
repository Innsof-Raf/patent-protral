import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/notification.freezed.dart';

@freezed
sealed class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String date,
    required String month,
    required String title,
    required String subtitle,
    required String description,
    required bool isRead,
  }) = _NotificationEntity;
}
