import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/speciality/data/datasources/speciality_remote_data_source.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

class SpecialityRepositoryImpl implements SpecialityRepository {
  final SpecialityRemoteDataSource remoteDataSource;

  SpecialityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, List<Speciality>>> fetchSpecialities(
    SpecialityParams params,
  ) async {
    try {
      final models = await remoteDataSource.fetchSpecialities(params);
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(
        ErrorModel(message: e.toString().replaceAll('ServerException: ', '')),
      );
    }
  }

  @override
  Future<List<Speciality>> searchSpecialities(SpecialityParams params) {
    final searchParams = params.maybeMap(
      searchSpecialities: (value) => value,
      orElse: () => throw Exception('Invalid speciality search params'),
    );
    final searchKey = searchParams.searchKey.toLowerCase();
    return Future.value(
      searchParams.specialities
          .where(
            (speciality) =>
                speciality.specialityName.toLowerCase().contains(searchKey),
          )
          .toList(),
    );
  }
}
