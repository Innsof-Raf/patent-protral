part of 'otp_generation_bloc.dart';

@freezed
class OtpGenerationEvent with _$OtpGenerationEvent {
  const factory OtpGenerationEvent.generateOtp({required String mobileNumber}) =
      GenerateOtp;
  const factory OtpGenerationEvent.resentOtp() = ResentOtp;
}
