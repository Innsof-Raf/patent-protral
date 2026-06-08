import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/domain/repositories/doctor_repository.dart';

class GetAvailableDoctorsUseCase implements UseCase<List<Doctor>, int> {
  final DoctorRepository repository;

  GetAvailableDoctorsUseCase(this.repository);

  @override
  Future<Either<Failure, List<Doctor>>> call(int specialityId) async {
    return await repository.getAvailableDoctors(specialityId);
  }
}
