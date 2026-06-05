import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../resources/error_model.dart';
import '../../../profile/models/user/user_model.dart';
import '../../service/login_with_password_service.dart';

part 'login_with_password_event.dart';
part 'login_with_password_state.dart';
part 'login_with_password_bloc.freezed.dart';

class LoginWithPasswordBloc
    extends Bloc<LoginWithPasswordEvent, LoginWithPasswordState> {
  LoginWithPasswordBloc() : super(LoginWithPasswordState.initial()) {
    on<LoginWithPassword>((event, emit) async {
      emit(state.copyWith(
        isLogingin: true,
        isLoginFailed: false,
        isLoginSucces: false,
      ));
      final Either<ErrorModel, UserModel> loginWithPasswordOptions =
          await LoginWithPasswordServices.loginWithPassword(
              mobileNo: event.mobileNumber, password: event.password);
      loginWithPasswordOptions.fold(
          (error) => emit(state.copyWith(
              isLogingin: false, isLoginFailed: true, error: error)),
          (user) => emit(state.copyWith(
              isLogingin: false, isLoginSucces: true, user: user)));
    });
  }
}
