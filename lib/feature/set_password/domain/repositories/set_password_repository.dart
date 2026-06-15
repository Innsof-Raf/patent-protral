import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/set_password/domain/entities/change_password_response.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';

abstract class SetPasswordRepository {
  Future<Either<ErrorModel, ChangePasswordResponse>> changePassword(
    SetPasswordParams params,
  );
}
