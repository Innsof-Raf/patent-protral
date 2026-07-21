import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/set_password/domain/entities/change_password_response.dart';
import 'package:patient_portal/feature/set_password/domain/repositories/set_password_repository.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';

class ChangePasswordUseCase {
  final SetPasswordRepository repository;

  ChangePasswordUseCase(this.repository);

  Future<Either<ErrorModel, ChangePasswordResponse>> call(
    SetPasswordParams params,
  ) {
    return repository.changePassword(params);
  }
}
