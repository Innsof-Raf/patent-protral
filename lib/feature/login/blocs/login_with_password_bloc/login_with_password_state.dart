part of 'login_with_password_bloc.dart';

@freezed
sealed class LoginWithPasswordState with _$LoginWithPasswordState {
  const factory LoginWithPasswordState(
      {required bool isLogingin,
      required bool isLoginFailed,
      required bool isLoginSucces,
      required ErrorModel error,
      required UserModel? user}) = _LoginWithPasswordState;

  factory LoginWithPasswordState.initial() => LoginWithPasswordState(
      isLogingin: false,
      isLoginFailed: false,
      isLoginSucces: false,
      error: ErrorModel(message: ''),
      user: null);
}
