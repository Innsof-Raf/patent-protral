import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class FetchSpecialitiesUseCase {
  final SpecialityRepository repository;

  FetchSpecialitiesUseCase(this.repository);

  Future<Either<ErrorModel, List<SpecialityModel>>> call(
    SpecialityParams params,
  ) {
    return repository.fetchSpecialities(params);
  }
}
