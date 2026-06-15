import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/login/data/datasources/login_remote_data_source.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, OtpResponse>> generateOtp(String mobileNumber) async {
    try {
      final remoteOtp = await remoteDataSource.generateOtp(mobileNumber);
      return Right(remoteOtp.toEntity());
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<Failure, User>> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  }) async {
    try {
      final userModel = await remoteDataSource.verifyOtp(
        idOtp: idOtp,
        mobileNumber: mobileNumber,
        otp: otp,
      );
      return Right(userModel.toEntity());
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString().replaceAll('Exception: ', '')));
    }
  }

  @override
  Future<Either<Failure, User>> loginWithPassword({
    required String mobileNumber,
    required String password,
  }) async {
    try {
      final userModel = await remoteDataSource.loginWithPassword(
        mobileNumber: mobileNumber,
        password: password,
      );
      return Right(userModel.toEntity());
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString().replaceAll('Exception: ', '')));
    }
  }
}
