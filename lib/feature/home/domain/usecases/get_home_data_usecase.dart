import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

class GetHomeDataUseCase implements UseCase<HomeDataModel, HomeParams> {
  final HomeRepository repository;

  GetHomeDataUseCase(this.repository);

  @override
  Future<Either<Failure, HomeDataModel>> call(HomeParams params) {
    return params.when(
      getHomeData: (token, idBusunit) =>
          repository.getHomeData(token: token, idBusunit: idBusunit),
    );
  }
}
