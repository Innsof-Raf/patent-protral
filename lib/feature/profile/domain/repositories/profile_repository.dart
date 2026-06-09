import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

abstract class ProfileRepository {
  Future<Either<Failure, MemberModel>> addMember(ProfileParams params);

  Future<Either<Failure, MemberModel>> changeMemberInsuranceDetails(
    ProfileParams params,
  );

  Future<Either<Failure, MemberModel>> getMemberDetail(ProfileParams params);
}
