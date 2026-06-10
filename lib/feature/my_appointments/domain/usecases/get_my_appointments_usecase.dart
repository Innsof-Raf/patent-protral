import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/repositories/my_appointments_repository.dart';

class GetMyAppointmentsUseCase {
  final MyAppointmentsRepository repository;

  GetMyAppointmentsUseCase(this.repository);

  Future<Either<ErrorModel, List<MyAppointmentModel>>> call({
    required String mobileNumber,
    required String token,
  }) {
    return repository.getMyAppointments(
      mobileNumber: mobileNumber,
      token: token,
    );
  }
}
