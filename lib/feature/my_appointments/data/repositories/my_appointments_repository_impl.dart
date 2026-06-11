import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/data/datasources/my_appointment_services.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/domain/repositories/my_appointments_repository.dart';

class MyAppointmentsRepositoryImpl implements MyAppointmentsRepository {
  @override
  Future<Either<ErrorModel, List<MyAppointment>>> getMyAppointments({
    required String mobileNumber,
    required String token,
  }) async {
    final result = await MyAppointmentServices.getMyAppointments(
      mobileNumber: mobileNumber,
      token: token,
    );
    return result.map(
      (appointments) =>
          appointments.map((appointment) => appointment.toEntity()).toList(),
    );
  }

  @override
  Future<Either<ErrorModel, Map>> cancelAppointment({
    required int appointmentId,
    required String token,
  }) {
    return MyAppointmentServices.cancelAppointment(
      appointmentId: appointmentId,
      token: token,
    );
  }
}
