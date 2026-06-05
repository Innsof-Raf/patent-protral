part of 'login_with_password_bloc.dart';

@freezed
class LoginWithPasswordEvent with _$LoginWithPasswordEvent {
  const factory LoginWithPasswordEvent.loginWithPassword(
      {required String mobileNumber,
      required String password}) = LoginWithPassword;
}
