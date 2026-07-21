import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

class UpdateItemInCartUseCase
    implements UseCase<Map<String, dynamic>, LabParams> {
  final LabRepository repository;

  UpdateItemInCartUseCase(this.repository);

  @override
  Future<Either<Failure, Map<String, dynamic>>> call(LabParams params) {
    return params.maybeWhen(
      updateItemInCart: (idItem, idUser, token) => repository.updateItemInCart(
        idItem: idItem,
        idUser: idUser,
        token: token,
      ),
      orElse: () =>
          throw Exception('Invalid Params for UpdateItemInCartUseCase'),
    );
  }
}
