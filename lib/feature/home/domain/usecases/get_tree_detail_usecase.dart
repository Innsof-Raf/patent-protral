import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

class GetTreeDetailUseCase implements UseCase<List<TreeDetail>, HomeParams> {
  final HomeRepository repository;

  GetTreeDetailUseCase(this.repository);

  @override
  Future<Either<Failure, List<TreeDetail>>> call(HomeParams params) {
    return params.maybeWhen(
      getTreeDetail: (token, idTreedetail) =>
          repository.getTreeDetail(token: token, idTreedetail: idTreedetail),
      orElse: () => throw Exception('Invalid params for GetTreeDetailUseCase'),
    );
  }
}
