import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/set_password_params.freezed.dart';

@freezed
sealed class SetPasswordParams with _$SetPasswordParams {
  const factory SetPasswordParams.changePassword({
    required int idUser,
    required String mobileNumber,
    required String newPassword,
    required String token,
  }) = ChangePasswordParams;
}
