import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/models/member/member_model.dart';
import 'package:patient_portal/resources/common_models/insurance/insurance_model.dart';

abstract class AddMemberRepository {
  Future<Either<Failure, List<InsuranceModel>>> getInsuranceTypes({
    required String token,
  });

  Future<Either<Failure, MemberModel>> addMember(AddMemberParams params);

  Future<Either<Failure, MemberModel>> updateInsurance(AddMemberParams params);
}
