import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/lab/domain/entities/package.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

class GetPackagesUseCase implements UseCase<List<Package>, LabParams> {
  final LabRepository repository;

  GetPackagesUseCase(this.repository);

  @override
  Future<Either<Failure, List<Package>>> call(LabParams params) {
    return params.maybeWhen(
      getPackages: (token) => repository.getPackages(token: token),
      orElse: () => throw Exception('Invalid Params for GetPackagesUseCase'),
    );
  }
}
