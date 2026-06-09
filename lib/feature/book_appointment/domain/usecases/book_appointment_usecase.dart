import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';
import 'package:patient_portal/resources/common_models/appointment_model.dart/appointment_model.dart';

class BookAppointmentUseCase
    implements UseCase<AppointmentModel, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  BookAppointmentUseCase(this.repository);

  @override
  Future<Either<Failure, AppointmentModel>> call(BookAppointmentParams params) {
    return params.when(
      getAvailableSlots: (_, __, ___) => throw UnimplementedError(),
      bookAppointment:
          (idDoctor, appointmentDateTime, mobileNo, idMember, token) =>
              repository.bookAppointment(
                idDoctor: idDoctor,
                appointmentDateTime: appointmentDateTime,
                mobileNo: mobileNo,
                idMember: idMember,
                token: token,
              ),
      rescheduleAppointment: (_, __, ___) => throw UnimplementedError(),
    );
  }
}
