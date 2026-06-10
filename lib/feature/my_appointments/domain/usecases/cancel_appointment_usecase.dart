import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/repositories/my_appointments_repository.dart';

class CancelAppointmentUseCase {
  final MyAppointmentsRepository repository;

  CancelAppointmentUseCase(this.repository);

  Future<Either<ErrorModel, Map>> call({
    required int appointmentId,
    required String token,
  }) {
    return repository.cancelAppointment(
      appointmentId: appointmentId,
      token: token,
    );
  }
}
