import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

abstract class SpecialityRepository {
  Future<Either<ErrorModel, List<Speciality>>> fetchSpecialities(
    SpecialityParams params,
  );

  Future<List<Speciality>> searchSpecialities(SpecialityParams params);
}
