import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/set_password/domain/repositories/set_password_repository.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class ChangePasswordUseCase {
  final SetPasswordRepository repository;

  ChangePasswordUseCase(this.repository);

  Future<Either<ErrorModel, Map>> call(SetPasswordParams params) {
    return repository.changePassword(params);
  }
}
