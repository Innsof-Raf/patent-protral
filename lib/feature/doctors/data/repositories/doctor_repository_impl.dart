import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/doctors/data/datasources/doctor_remote_data_source.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/domain/repositories/doctor_repository.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/params/doctor_params.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource remoteDataSource;

  DoctorRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Doctor>>> getAvailableDoctors(
    DoctorParams params,
  ) async {
    return await params.when(
      getAvailableDoctors: (specialityId, token) async {
        try {
          final remoteDoctors = await remoteDataSource.getAvailableDoctors(
            specialityId,
            token,
          );
          return Right(remoteDoctors.map((model) => model.toEntity()).toList());
        } on SocketException {
          return const Left(
            NetworkFailure(ConstantMessages.noNetworkErrorMessage),
          );
        } on TimeoutException {
          return const Left(
            ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
          );
        } catch (e) {
          return const Left(
            ServerFailure(ConstantMessages.serverFailureMessage),
          );
        }
      },
    );
  }
}
