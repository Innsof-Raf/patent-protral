import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment_model.dart';

abstract class MyAppointmentsRepository {
  Future<Either<ErrorModel, List<MyAppointmentModel>>> getMyAppointments({
    required String mobileNumber,
    required String token,
  });

  Future<Either<ErrorModel, Map>> cancelAppointment({
    required int appointmentId,
    required String token,
  });
}
