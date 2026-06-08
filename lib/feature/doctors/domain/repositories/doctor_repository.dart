import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';

abstract class DoctorRepository {
  Future<Either<Failure, List<Doctor>>> getAvailableDoctors(int specialityId);
}
