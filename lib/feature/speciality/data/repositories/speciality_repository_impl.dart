import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/speciality/data/datasources/speciality_remote_data_source.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

class SpecialityRepositoryImpl implements SpecialityRepository {
  final SpecialityRemoteDataSource remoteDataSource;

  SpecialityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  ) {
    return remoteDataSource.fetchSpecialities(params);
  }

  @override
  Future<List<SpecialityModel>> searchSpecialities(SpecialityParams params) {
    return remoteDataSource.searchSpecialities(params);
  }
}
