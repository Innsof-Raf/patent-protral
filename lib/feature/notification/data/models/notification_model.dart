import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';

part 'generated/notification_model.freezed.dart';
part 'generated/notification_model.g.dart';

@freezed
sealed class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'month') required String month,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'subtitle') required String subtitle,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'isRead') @Default(false) bool isRead,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  NotificationEntity toEntity() => NotificationEntity(
    date: date,
    month: month,
    title: title,
    subtitle: subtitle,
    description: description,
    isRead: isRead,
  );
}
