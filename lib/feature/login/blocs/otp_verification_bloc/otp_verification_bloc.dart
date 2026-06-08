import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/service/login_otp_verification_services.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';
part 'generated/otp_verification_bloc.freezed.dart';

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  OtpVerificationBloc() : super(OtpVerificationState.initial()) {
    on<VerifyOtp>((event, emit) async {
      emit(
        state.copyWith(
          isVerifying: true,
          isVerifyingFailed: false,
          isVerifyingSuccess: false,
        ),
      );
      final Either<ErrorModel, UserModel> otpVerifyingOptions =
          await LoginOtpVerificationServices.validateOtp(
            event.idOtp,
            event.mobileNumber,
            event.otp,
          );
      otpVerifyingOptions.fold(
        (error) => emit(
          state.copyWith(
            isVerifying: false,
            isVerifyingFailed: true,
            error: error,
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
