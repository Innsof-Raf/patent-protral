import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';

class GenerateOtpUseCase implements UseCase<OtpResponse, String> {
  final LoginRepository repository;

  GenerateOtpUseCase(this.repository);

  @override
  Future<Either<Failure, OtpResponse>> call(String mobileNumber) async {
    return await repository.generateOtp(mobileNumber);
  }
}
