import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';

class LoginWithPasswordUseCase implements UseCase<UserModel, LoginParams> {
  final LoginRepository repository;

  LoginWithPasswordUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(LoginParams params) async {
    return await params.maybeWhen(
      loginWithPassword: (mobileNumber, password) async => await repository
          .loginWithPassword(mobileNumber: mobileNumber, password: password),
      orElse: () =>
          throw Exception('Invalid Params for LoginWithPasswordUseCase'),
    );
  }
}
