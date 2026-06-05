part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.changePassword(
      {required int idUser,
      required String mobileNumber,
      required String newPassword,
      required String token}) = ChangePassword;
}
