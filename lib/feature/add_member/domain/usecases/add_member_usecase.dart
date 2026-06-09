import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/add_member/domain/repositories/add_member_repository.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';

class AddMemberUseCase implements UseCase<MemberModel, AddMemberParams> {
  final AddMemberRepository repository;

  AddMemberUseCase(this.repository);

  @override
  Future<Either<Failure, MemberModel>> call(AddMemberParams params) {
    return repository.addMember(params);
  }
}
