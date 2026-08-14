import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

class GetTreeDetailItemUseCase
    implements UseCase<List<TreeDetailItem>, HomeParams> {
  final HomeRepository repository;

  GetTreeDetailItemUseCase(this.repository);

  @override
  Future<Either<Failure, List<TreeDetailItem>>> call(HomeParams params) {
    return params.maybeWhen(
      getTreeDetailItem: (token, idTreedetail) =>
          repository.getTreeDetailItem(
            token: token,
            idTreedetail: idTreedetail,
          ),
      getTreeDetail: (token, idTreedetail) =>
          repository.getTreeDetailItem(
            token: token,
            idTreedetail: idTreedetail,
          ),
      orElse: () =>
          throw Exception('Invalid params for GetTreeDetailItemUseCase'),
    );
  }
}
