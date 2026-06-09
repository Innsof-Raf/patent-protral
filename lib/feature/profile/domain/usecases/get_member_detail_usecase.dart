import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/repositories/profile_repository.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

class GetMemberDetailUseCase implements UseCase<MemberModel, ProfileParams> {
  final ProfileRepository repository;

  GetMemberDetailUseCase(this.repository);

  @override
  Future<Either<Failure, MemberModel>> call(ProfileParams params) {
    return repository.getMemberDetail(params);
  }
}
