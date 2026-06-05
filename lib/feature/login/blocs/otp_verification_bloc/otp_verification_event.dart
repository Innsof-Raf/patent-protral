part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.verifyOtp({
    required String mobileNumber,
    required String idOtp,
    required String otp,
  }) = VerifyOtp;
}
