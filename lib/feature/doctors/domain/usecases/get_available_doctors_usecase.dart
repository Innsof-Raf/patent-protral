import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/domain/repositories/doctor_repository.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/params/doctor_params.dart';

class GetAvailableDoctorsUseCase
    implements UseCase<List<Doctor>, DoctorParams> {
  final DoctorRepository repository;

  GetAvailableDoctorsUseCase(this.repository);

  @override
  Future<Either<Failure, List<Doctor>>> call(DoctorParams params) async {
    return await repository.getAvailableDoctors(params);
  }
}
