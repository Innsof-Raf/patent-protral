import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/add_member/domain/repositories/add_member_repository.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';

class GetInsurancesUseCase
    implements UseCase<List<InsuranceModel>, AddMemberParams> {
  final AddMemberRepository repository;

  GetInsurancesUseCase(this.repository);

  @override
  Future<Either<Failure, List<InsuranceModel>>> call(AddMemberParams params) {
    return params.when(
      getInsurances: (token) => repository.getInsuranceTypes(token: token),
      addMember:
          (
            accessToken,
            mobileNumber,
            patientName,
            nationalId,
            gender,
            dob,
            email,
            profileImage,
            idInsurance,
            memberNumber,
            expireDate,
            otherInsuranceName,
          ) => throw UnimplementedError(),
      updateInsurance:
          (
            memberId,
            idInsurance,
            insuranceName,
            memberNumber,
            expireDate,
            token,
          ) => throw UnimplementedError(),
    );
  }
}
