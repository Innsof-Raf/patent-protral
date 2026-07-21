import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

class RefreshTokenUseCase implements UseCase<User, LoginParams> {
  final LoginRepository repository;

  RefreshTokenUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await params.maybeWhen(
      refreshToken: (id, mobileNumber, token) async => await repository
          .refreshToken(id: id, mobileNumber: mobileNumber, token: token),
      orElse: () => throw Exception('Invalid Params for RefreshTokenUseCase'),
    );
  }
}
