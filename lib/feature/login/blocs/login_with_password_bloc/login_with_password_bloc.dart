import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/domain/usecases/login_with_password_usecase.dart';

import '../../../../resources/error_model.dart';
import '../../../profile/models/user/user_model.dart';

part 'login_with_password_event.dart';
part 'login_with_password_state.dart';
part 'generated/login_with_password_bloc.freezed.dart';

class LoginWithPasswordBloc
    extends Bloc<LoginWithPasswordEvent, LoginWithPasswordState> {
  final LoginWithPasswordUseCase loginWithPasswordUseCase;

  LoginWithPasswordBloc({required this.loginWithPasswordUseCase})
    : super(LoginWithPasswordState.initial()) {
    on<LoginWithPassword>((event, emit) async {
      emit(state.copyWith(
        isLogingin: true,
        isLoginFailed: false,
        isLoginSucces: false,
      ));

      final result = await loginWithPasswordUseCase(
        LoginWithPasswordParams(
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
          state.copyWith(isLogingin: false, isLoginSucces: true, user: user),
        ),
      );
    });
  }
}
