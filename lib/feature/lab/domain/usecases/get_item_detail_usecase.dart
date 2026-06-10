import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/lab/domain/entities/item_model.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

class GetItemDetailUseCase implements UseCase<ItemModel, LabParams> {
  final LabRepository repository;

  GetItemDetailUseCase(this.repository);

  @override
  Future<Either<Failure, ItemModel>> call(LabParams params) {
    return params.maybeWhen(
      getItemDetail: (idItem, token) =>
          repository.getItemDetail(idItem: idItem, token: token),
      orElse: () => throw Exception('Invalid Params for GetItemDetailUseCase'),
    );
  }
}
