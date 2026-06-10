import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Member>> addMember(ProfileParams params);

  Future<Either<Failure, Member>> changeMemberInsuranceDetails(
    ProfileParams params,
  );

  Future<Either<Failure, Member>> getMemberDetail(ProfileParams params);
}
