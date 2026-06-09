import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, OtpResponse>> generateOtp(String mobileNumber);
  Future<Either<Failure, UserModel>> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  });
  Future<Either<Failure, UserModel>> loginWithPassword({
    required String mobileNumber,
    required String password,
  });
}
