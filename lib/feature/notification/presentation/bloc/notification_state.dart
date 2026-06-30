part of 'notification_bloc.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState({
    required List<NotificationEntity> notifications,
    required bool isLoading,
    required bool isError,
    required bool isSuccess,
    required String errorMessage,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState(
    notifications: [],
    isLoading: false,
    isError: false,
    isSuccess: false,
    errorMessage: '',
  );
}
