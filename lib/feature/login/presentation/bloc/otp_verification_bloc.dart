import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/domain/usecases/verify_otp_usecase.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'generated/otp_verification_bloc.freezed.dart';
part 'otp_verification_event.dart';
part 'otp_verification_state.dart';

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  final VerifyOtpUseCase verifyOtpUseCase;

  OtpVerificationBloc({required this.verifyOtpUseCase})
    : super(OtpVerificationState.initial()) {
    on<VerifyOtp>((event, emit) async {
      emit(
        state.copyWith(
          isVerifying: true,
          isVerifyingFailed: false,
          isVerifyingSuccess: false,
        ),
      );

      final result = await verifyOtpUseCase(
        VerifyOtpParams(
          idOtp: event.idOtp,
          mobileNumber: event.mobileNumber,
          otp: event.otp,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isVerifying: false,
            isVerifyingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (user) => emit(
          state.copyWith(
            isVerifying: false,
            isVerifyingSuccess: true,
            user: user,
          ),
        ),
      );
    });
  }
}
