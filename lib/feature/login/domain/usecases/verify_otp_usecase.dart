import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

class VerifyOtpUseCase implements UseCase<User, LoginParams> {
  final LoginRepository repository;

  VerifyOtpUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await params.maybeWhen(
      verifyOtp: (idOtp, mobileNumber, otp) async => await repository.verifyOtp(
        idOtp: idOtp,
        mobileNumber: mobileNumber,
        otp: otp,
      ),
      orElse: () => throw Exception('Invalid Params for VerifyOtpUseCase'),
    );
  }
}
