import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

class FetchSpecialitiesUseCase {
  final SpecialityRepository repository;

  FetchSpecialitiesUseCase(this.repository);

  Future<Either<ErrorModel, List<Speciality>>> call(SpecialityParams params) {
    return repository.fetchSpecialities(params);
  }
}
