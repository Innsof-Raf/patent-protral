part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState(
      {required bool isPasswordChnaging,
      required bool isPasswordChangingFailed,
      required bool isPasswordChangingSucces,
      required ErrorModel error}) = _ChangePasswordState;
  factory ChangePasswordState.initial() => ChangePasswordState(
      isPasswordChnaging: false,
      isPasswordChangingFailed: false,
      isPasswordChangingSucces: false,
      error: ErrorModel(message: ''));
}
