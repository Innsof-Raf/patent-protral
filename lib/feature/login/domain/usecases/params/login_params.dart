import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/login_params.freezed.dart';

@freezed
sealed class LoginParams with _$LoginParams {
  const factory LoginParams.generateOtp({required String mobileNumber}) =
      GenerateOtpParams;

  const factory LoginParams.verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  }) = VerifyOtpParams;

  const factory LoginParams.loginWithPassword({
    required String mobileNumber,
    required String password,
  }) = LoginWithPasswordParams;
}
