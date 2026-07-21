part of 'otp_verification_bloc.dart';

@freezed
sealed class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required bool isVerifying,
    required bool isVerifyingFailed,
    required bool isVerifyingSuccess,
    User? user,
    required ErrorModel error,
  }) = _OtpVerificationState;

  factory OtpVerificationState.initial() => OtpVerificationState(
    isVerifying: false,
    isVerifyingFailed: false,
    isVerifyingSuccess: false,
    error: ErrorModel(message: ''),
  );
}
