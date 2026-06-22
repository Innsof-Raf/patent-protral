import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/login_params.freezed.dart';
part 'generated/login_params.g.dart';

@freezed
sealed class LoginParams with _$LoginParams {
  const factory LoginParams.generateOtp({
    @JsonKey(name: 'mobileNo') required String mobileNumber,
  }) = GenerateOtpParams;

  const factory LoginParams.verifyOtp({
    @JsonKey(name: 'id_otp') required String idOtp,
    @JsonKey(name: 'mobileNo') required String mobileNumber,
    required String otp,
  }) = VerifyOtpParams;

  const factory LoginParams.loginWithPassword({
    @JsonKey(name: 'username') required String mobileNumber,
    required String password,
  }) = LoginWithPasswordParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
