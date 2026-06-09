import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';
import 'package:patient_portal/resources/common_models/appointment_model.dart/appointment_model.dart';

class RescheduleAppointmentUseCase
    implements UseCase<AppointmentModel, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  RescheduleAppointmentUseCase(this.repository);

  @override
  Future<Either<Failure, AppointmentModel>> call(BookAppointmentParams params) {
    return params.when(
      getAvailableSlots: (_, __, ___) => throw UnimplementedError(),
      bookAppointment: (_, __, ___, ____, _____) => throw UnimplementedError(),
      rescheduleAppointment: (appointmentDateTime, idAppointment, token) =>
          repository.rescheduleAppointment(
            appointmentDateTime: appointmentDateTime,
            idAppointment: idAppointment,
            token: token,
          ),
    );
  }
}
