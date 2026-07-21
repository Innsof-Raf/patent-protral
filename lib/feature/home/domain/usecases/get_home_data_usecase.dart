import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

class GetHomeDataUseCase implements UseCase<HomeData, HomeParams> {
  final HomeRepository repository;

  GetHomeDataUseCase(this.repository);

  @override
  Future<Either<Failure, HomeData>> call(HomeParams params) {
    return params.when(
      getHomeData: (token, idBusunit) =>
          repository.getHomeData(token: token, idBusunit: idBusunit),
    );
  }
}
