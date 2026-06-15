import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';

class BookAppointmentUseCase
    implements UseCase<AppointmentModel, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  BookAppointmentUseCase(this.repository);

  @override
  Future<Either<Failure, AppointmentModel>> call(BookAppointmentParams params) {
    return params.maybeMap(
      bookAppointment: (params) => repository.bookAppointment(
        idDoctor: params.idDoctor,
        appointmentDateTime: params.appointmentDateTime,
        mobileNo: params.mobileNo,
        idMember: params.idMember,
        token: params.token,
      ),
      orElse: () => throw UnimplementedError(),
    );
  }
}

class RescheduleAppointmentUseCase
    implements UseCase<AppointmentModel, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  RescheduleAppointmentUseCase(this.repository);

  @override
  Future<Either<Failure, AppointmentModel>> call(BookAppointmentParams params) {
    return params.maybeMap(
      rescheduleAppointment: (params) => repository.rescheduleAppointment(
        appointmentDateTime: params.appointmentDateTime,
        idAppointment: params.idAppointment,
        token: params.token,
      ),
      orElse: () => throw UnimplementedError(),
    );
  }
}

class GetAvailableSlotsUseCase
    implements UseCase<Shift, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  GetAvailableSlotsUseCase(this.repository);

  @override
  Future<Either<Failure, Shift>> call(BookAppointmentParams params) {
    return params.maybeMap(
      getAvailableSlots: (params) => repository.getAvailableSlots(
        date: params.date,
        idDoctor: params.idDoctor,
        token: params.token,
      ),
      orElse: () => throw UnimplementedError(),
    );
  }
}
