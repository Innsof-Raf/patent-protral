import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/set_password/domain/entities/change_password_response_model.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

abstract class SetPasswordRepository {
  Future<Either<ErrorModel, ChangePasswordResponseModel>> changePassword(
    SetPasswordParams params,
  );
}
