import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

abstract class SpecialityRepository {
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  );

  Future<List<SpecialityModel>> searchSpecialities(SpecialityParams params);
}
