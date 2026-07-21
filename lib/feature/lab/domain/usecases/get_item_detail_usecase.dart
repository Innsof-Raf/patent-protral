import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

class GetItemDetailUseCase implements UseCase<Item, LabParams> {
  final LabRepository repository;

  GetItemDetailUseCase(this.repository);

  @override
  Future<Either<Failure, Item>> call(LabParams params) {
    return params.maybeWhen(
      getItemDetail: (idItem, token) =>
          repository.getItemDetail(idItem: idItem, token: token),
      orElse: () => throw Exception('Invalid Params for GetItemDetailUseCase'),
    );
  }
}
