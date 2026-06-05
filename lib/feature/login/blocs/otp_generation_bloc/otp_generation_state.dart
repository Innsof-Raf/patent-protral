part of 'otp_generation_bloc.dart';

@freezed
class OtpGenerationState with _$OtpGenerationState {
  const factory OtpGenerationState(
      {required bool isOtpGenerating,
      required bool isOtpGenerationFailed,
      required bool isResenting,
      required bool isOtpResentingFailed,
      required bool isOtpResentingSucess,
      required bool isOtpGenerationSuccess,
      required String mobileNumber,
      required ErrorModel error,
      required bool showPasswordSection,
      required String idOtp}) = _OtpGenerationState;
  factory OtpGenerationState.initial() => OtpGenerationState(
        isOtpGenerating: false,
        mobileNumber: '',
        isOtpGenerationFailed: false,
        isOtpGenerationSuccess: false,
        error: ErrorModel(message: ''),
        idOtp: '',
        isOtpResentingFailed: false,
        isOtpResentingSucess: false,
        isResenting: false,
        showPasswordSection: false,
      );
}
