import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/resources/error_model.dart';

abstract class SetPasswordRepository {
  Future<Either<ErrorModel, Map>> changePassword(SetPasswordParams params);
}
