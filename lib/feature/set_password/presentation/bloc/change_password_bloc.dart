import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/set_password/domain/entities/change_password_response_model.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/change_password_usecase.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'generated/change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUseCase changePasswordUseCase;

  ChangePasswordBloc({required this.changePasswordUseCase})
    : super(ChangePasswordState.initial()) {
    on<ChangePassword>((event, emit) async {
      emit(
        state.copyWith(
          isPasswordChnaging: true,
          isPasswordChangingFailed: false,
          isPasswordChangingSucces: false,
        ),
      );
      final Either<ErrorModel, ChangePasswordResponseModel>
      changePasswordOptions = await changePasswordUseCase(event.params);
      changePasswordOptions.fold(
        (error) => emit(
          state.copyWith(
            isPasswordChnaging: false,
            isPasswordChangingFailed: true,
            error: error,
          ),
        ),
        (succes) => emit(
          state.copyWith(
            isPasswordChnaging: false,
            isPasswordChangingSucces: true,
          ),
        ),
      );
    });
  }
}
