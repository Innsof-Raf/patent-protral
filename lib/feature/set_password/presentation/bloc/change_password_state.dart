part of 'change_password_bloc.dart';

@freezed
sealed class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required bool isPasswordChanging,
    required bool isPasswordChangingFailed,
    required bool isPasswordChangingSuccess,
    required ErrorModel error,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
    isPasswordChanging: false,
    isPasswordChangingFailed: false,
    isPasswordChangingSuccess: false,
    error: ErrorModel(message: ''),
  );
}
