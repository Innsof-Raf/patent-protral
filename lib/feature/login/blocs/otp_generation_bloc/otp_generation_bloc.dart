import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../../service/login_otp_generation_services.dart';

part 'otp_generation_event.dart';
part 'otp_generation_state.dart';
part 'generated/otp_generation_bloc.freezed.dart';

class OtpGenerationBloc extends Bloc<OtpGenerationEvent, OtpGenerationState> {
  OtpGenerationBloc() : super(OtpGenerationState.initial()) {
    on<GenerateOtp>((event, emit) async {
      emit(
        state.copyWith(
          isOtpGenerating: true,
          isResenting: false,
          isOtpResentingFailed: false,
          isOtpResentingSucess: false,
          isOtpGenerationFailed: false,
          isOtpGenerationSuccess: false,
          mobileNumber: event.mobileNumber,
        ),
      );
      final Either<ErrorModel, Map<String, dynamic>> otpGeneratingOptions =
          await LogInOtpGenarationServices.generateOtp(event.mobileNumber);
      otpGeneratingOptions.fold(
        (failure) => emit(
          state.copyWith(
            isOtpGenerating: false,
            isOtpGenerationFailed: true,
            error: failure,
          ),
        ),
        (response) => emit(
          state.copyWith(
            isOtpGenerating: false,
            isOtpGenerationSuccess: true,
            showPasswordSection: response['is_pwdset'],
            idOtp: response['Otp'],
          ),
        ),
      );
    });
    on<ResentOtp>((event, emit) async {
      emit(
        state.copyWith(
          isResenting: true,
          isOtpResentingFailed: false,
          isOtpResentingSucess: false,
          isOtpGenerationFailed: false,
          isOtpGenerationSuccess: false,
        ),
      );
      final Either<ErrorModel, Map<String, dynamic>> otpResentingOptions =
          await LogInOtpGenarationServices.generateOtp(state.mobileNumber);

      otpResentingOptions.fold(
        (failure) => emit(
          state.copyWith(
            isResenting: false,
            isOtpResentingFailed: true,
            error: failure,
          ),
        ),
        (response) => emit(
          state.copyWith(
            isResenting: false,
            isOtpResentingSucess: true,
            idOtp: response['Otp'],
          ),
        ),
      );
    });
  }
}
