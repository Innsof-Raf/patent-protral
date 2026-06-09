import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/book_appointment/data/models/shift_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';

class GetAvailableSlotsUseCase
    implements UseCase<ShiftModel, BookAppointmentParams> {
  final BookAppointmentRepository repository;

  GetAvailableSlotsUseCase(this.repository);

  @override
  Future<Either<Failure, ShiftModel>> call(BookAppointmentParams params) {
    return params.when(
      getAvailableSlots: (date, idDoctor, token) => repository
          .getAvailableSlots(date: date, idDoctor: idDoctor, token: token),
      bookAppointment: (_, _, _, _, _) => throw UnimplementedError(),
      rescheduleAppointment: (_, _, _) => throw UnimplementedError(),
    );
  }
}
