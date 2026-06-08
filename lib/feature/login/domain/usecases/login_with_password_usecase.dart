import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';

class LoginWithPasswordParams {
  final String mobileNumber;
  final String password;

  LoginWithPasswordParams({required this.mobileNumber, required this.password});
}

class LoginWithPasswordUseCase
    implements UseCase<UserModel, LoginWithPasswordParams> {
  final LoginRepository repository;

  LoginWithPasswordUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(
    LoginWithPasswordParams params,
  ) async {
    return await repository.loginWithPassword(
      mobileNumber: params.mobileNumber,
      password: params.password,
    );
  }
}
