part of 'otp_verification_bloc.dart';

@freezed
sealed class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required bool isVerifying,
    required bool isVerifyingFailed,
    required bool isVerifyingSuccess,
    required ErrorModel error,
    required UserModel? user,
  }) = _OtpVerificationState;

  factory OtpVerificationState.initial() => OtpVerificationState(
    isVerifying: false,
    isVerifyingFailed: false,
    isVerifyingSuccess: false,
    user: null,
    error: ErrorModel(message: ''),
  );
}
