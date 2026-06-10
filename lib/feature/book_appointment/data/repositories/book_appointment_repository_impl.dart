import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/book_appointment/data/datasources/book_appointment_remote_data_source.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';

class BookAppointmentRepositoryImpl implements BookAppointmentRepository {
  final BookAppointmentRemoteDataSource remoteDataSource;

  BookAppointmentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Shift>> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) async {
    try {
      final result = await remoteDataSource.getAvailableSlots(
        date: date,
        idDoctor: idDoctor,
        token: token,
      );
      return Right(result.toEntity());
    } on SocketException {
      return const Left(NetworkFailure('No Internet Connection'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppointmentModel>> bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) async {
    try {
      final result = await remoteDataSource.bookAppointment(
        idDoctor: idDoctor,
        appointmentDateTime: appointmentDateTime,
        mobileNo: mobileNo,
        idMember: idMember,
        token: token,
      );
      return Right(result);
    } on SocketException {
      return const Left(NetworkFailure('No Internet Connection'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppointmentModel>> rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  }) async {
    try {
      final result = await remoteDataSource.rescheduleAppointment(
        appointmentDateTime: appointmentDateTime,
        idAppointment: idAppointment,
        token: token,
      );
      return Right(result);
    } on SocketException {
      return const Left(NetworkFailure('No Internet Connection'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
