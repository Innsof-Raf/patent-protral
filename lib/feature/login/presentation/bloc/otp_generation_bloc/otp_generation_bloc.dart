import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/domain/usecases/generate_otp_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'generated/otp_generation_bloc.freezed.dart';
part 'otp_generation_event.dart';
part 'otp_generation_state.dart';

class OtpGenerationBloc extends Bloc<OtpGenerationEvent, OtpGenerationState> {
  final GenerateOtpUseCase generateOtpUseCase;

  OtpGenerationBloc({required this.generateOtpUseCase})
    : super(OtpGenerationState.initial()) {
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

      final result = await generateOtpUseCase(
        LoginParams.generateOtp(mobileNumber: event.mobileNumber),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isOtpGenerating: false,
            isOtpGenerationFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (response) => emit(
          state.copyWith(
            isOtpGenerating: false,
            isOtpGenerationSuccess: true,
            showPasswordSection: response.showPasswordSection,
            idOtp: response.otp,
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

      final result = await generateOtpUseCase(
        LoginParams.generateOtp(mobileNumber: state.mobileNumber),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isResenting: false,
            isOtpResentingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (response) => emit(
          state.copyWith(
            isResenting: false,
            isOtpResentingSucess: true,
            idOtp: response.otp,
          ),
        ),
      );
    });
  }
}
