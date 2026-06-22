import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

abstract class LoginRepository {
  Future<Either<Failure, OtpResponse>> generateOtp(String mobileNumber);

  Future<Either<Failure, User>> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  });

  Future<Either<Failure, User>> loginWithPassword({
    required String mobileNumber,
    required String password,
  });

  Future<Either<Failure, User>> refreshToken({
    required int id,
    required String mobileNumber,
    required String token,
  });
}
