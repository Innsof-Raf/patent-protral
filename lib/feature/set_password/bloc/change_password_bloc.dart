import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/set_password/services/change_password_service.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(ChangePasswordState.initial()) {
    on<ChangePassword>((event, emit) async {
      emit(state.copyWith(
          isPasswordChnaging: true,
          isPasswordChangingFailed: false,
          isPasswordChangingSucces: false));
      final Either<ErrorModel, Map> changePasswordOptions =
          await ChangePasswordServices.changePassword(
              idUser: event.idUser,
              mobileNumber: event.mobileNumber,
              newPassword: event.newPassword,
              token: event.token);
      changePasswordOptions.fold(
          (error) => emit(state.copyWith(
              isPasswordChnaging: false,
              isPasswordChangingFailed: true,
              error: error)),
          (succes) => emit(state.copyWith(
                isPasswordChnaging: false,
                isPasswordChangingSucces: true,
              )));
    });
  }
}
