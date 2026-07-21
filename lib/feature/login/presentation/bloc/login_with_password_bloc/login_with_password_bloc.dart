import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/login/domain/usecases/login_with_password_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

part 'generated/login_with_password_bloc.freezed.dart';
part 'login_with_password_event.dart';
part 'login_with_password_state.dart';

class LoginWithPasswordBloc
    extends Bloc<LoginWithPasswordEvent, LoginWithPasswordState> {
  final LoginWithPasswordUseCase loginWithPasswordUseCase;

  LoginWithPasswordBloc({required this.loginWithPasswordUseCase})
    : super(LoginWithPasswordState.initial()) {
    on<LoginWithPassword>((event, emit) async {
      emit(
        state.copyWith(
          isLogingin: true,
          isLoginFailed: false,
          isLoginSuccess: false,
        ),
      );

      final result = await loginWithPasswordUseCase(
        LoginParams.loginWithPassword(
          mobileNumber: event.mobileNumber,
          password: event.password,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLogingin: false,
            isLoginFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (user) => emit(
          state.copyWith(isLogingin: false, isLoginSuccess: true, user: user),
        ),
      );
    });
  }
}
