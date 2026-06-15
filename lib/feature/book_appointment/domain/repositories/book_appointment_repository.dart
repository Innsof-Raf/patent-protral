import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';

abstract class BookAppointmentRepository {
  Future<Either<Failure, Shift>> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  });

  Future<Either<Failure, AppointmentModel>> bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  });

  Future<Either<Failure, AppointmentModel>> rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  });
}
