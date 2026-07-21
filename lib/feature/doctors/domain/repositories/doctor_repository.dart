import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/params/doctor_params.dart';

abstract class DoctorRepository {
  Future<Either<Failure, List<Doctor>>> getAvailableDoctors(
    DoctorParams params,
  );
}
