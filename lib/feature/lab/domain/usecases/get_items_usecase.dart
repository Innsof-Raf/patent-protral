import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

class GetItemsUseCase implements UseCase<List<ItemModel>, LabParams> {
  final LabRepository repository;

  GetItemsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ItemModel>>> call(LabParams params) {
    return params.maybeWhen(
      getItems: (token) => repository.getItems(token: token),
      orElse: () => throw Exception('Invalid Params for GetItemsUseCase'),
    );
  }
}
