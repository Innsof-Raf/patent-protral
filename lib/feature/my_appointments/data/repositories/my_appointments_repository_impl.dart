import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/data/datasources/my_appointments_remote_data_source.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/domain/repositories/my_appointments_repository.dart';

import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';

class MyAppointmentsRepositoryImpl implements MyAppointmentsRepository {
  final MyAppointmentsRemoteDataSource remoteDataSource;

  MyAppointmentsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, List<MyAppointment>>> getMyAppointments({
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final models = await remoteDataSource.getMyAppointments(
        MyAppointmentsParams.getMyAppointments(
          mobileNumber: mobileNumber,
          token: token,
        ),
      );
      return Right(
        models.map((appointment) => appointment.toEntity()).toList(),
      );
    } catch (e) {
      return Left(
        ErrorModel(message: e.toString().replaceAll('ServerException: ', '')),
      );
    }
  }

  @override
  Future<Either<ErrorModel, Map>> cancelAppointment({
    required int appointmentId,
    required String token,
  }) async {
    try {
      final result = await remoteDataSource.cancelAppointment(
        MyAppointmentsParams.cancelAppointment(
          appointmentId: appointmentId,
          token: token,
        ),
      );
      return Right(result);
    } catch (e) {
      return Left(
        ErrorModel(message: e.toString().replaceAll('ServerException: ', '')),
      );
    }
  }
}
