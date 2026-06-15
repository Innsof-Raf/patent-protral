part of 'notification_bloc.dart';

@freezed
sealed class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications({
    required String token,
    required String mobileNumber,
  }) = GetNotifications;
}
