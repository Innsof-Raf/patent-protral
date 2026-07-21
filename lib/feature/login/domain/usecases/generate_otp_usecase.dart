import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';

class GenerateOtpUseCase implements UseCase<OtpResponse, LoginParams> {
  final LoginRepository repository;

  GenerateOtpUseCase(this.repository);

  @override
  Future<Either<Failure, OtpResponse>> call(LoginParams params) async {
    return await params.maybeWhen(
      generateOtp: (mobileNumber) async =>
          await repository.generateOtp(mobileNumber),
      orElse: () => throw Exception('Invalid Params for GenerateOtpUseCase'),
    );
  }
}
