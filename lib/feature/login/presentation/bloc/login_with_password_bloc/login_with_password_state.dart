part of 'login_with_password_bloc.dart';

@freezed
sealed class LoginWithPasswordState with _$LoginWithPasswordState {
  const factory LoginWithPasswordState({
    required bool isLogingin,
    required bool isLoginFailed,
    required bool isLoginSuccess,
    User? user,
    required ErrorModel error,
  }) = _LoginWithPasswordState;

  factory LoginWithPasswordState.initial() => LoginWithPasswordState(
    isLogingin: false,
    isLoginFailed: false,
    isLoginSuccess: false,
    error: ErrorModel(message: ''),
  );
}
