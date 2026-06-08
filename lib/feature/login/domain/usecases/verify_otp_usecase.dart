import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';

class VerifyOtpParams {
  final String idOtp;
  final String mobileNumber;
  final String otp;

  VerifyOtpParams({
    required this.idOtp,
    required this.mobileNumber,
    required this.otp,
  });
}

class VerifyOtpUseCase implements UseCase<UserModel, VerifyOtpParams> {
  final LoginRepository repository;

  VerifyOtpUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(VerifyOtpParams params) async {
    return await repository.verifyOtp(
      idOtp: params.idOtp,
      mobileNumber: params.mobileNumber,
      otp: params.otp,
    );
  }
}
