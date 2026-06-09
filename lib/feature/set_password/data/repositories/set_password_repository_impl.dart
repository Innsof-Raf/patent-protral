import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/set_password/data/datasources/set_password_remote_data_source.dart';
import 'package:patient_portal/feature/set_password/data/models/change_password_response_model.dart';
import 'package:patient_portal/feature/set_password/domain/repositories/set_password_repository.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class SetPasswordRepositoryImpl implements SetPasswordRepository {
  final SetPasswordRemoteDataSource remoteDataSource;

  SetPasswordRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, ChangePasswordResponseModel>> changePassword(
    SetPasswordParams params,
  ) {
    return remoteDataSource.changePassword(params);
  }
}
