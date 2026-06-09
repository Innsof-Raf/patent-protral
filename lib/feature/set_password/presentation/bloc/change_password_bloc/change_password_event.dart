part of 'change_password_bloc.dart';

@freezed
sealed class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.changePassword({
    required SetPasswordParams params,
  }) = ChangePassword;
}
