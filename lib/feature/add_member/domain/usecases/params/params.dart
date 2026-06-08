import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/params.freezed.dart';

@freezed
sealed class AddMemberParams with _$AddMemberParams {
  const factory AddMemberParams.getInsurances({required String token}) =
      _GetInsurancesParams;

  const factory AddMemberParams.addMember({
    required String accessToken,
    required String mobileNumber,
    required String patientName,
    required String nationalId,
    required String gender,
    required DateTime dob,
    String? email,
    File? profileImage,
    int? idInsurance,
    String? memberNumber,
    DateTime? expireDate,
    String? otherInsuranceName,
  }) = _AddMemberAddMemberParams;

  const factory AddMemberParams.updateInsurance({
    required int memberId,
    required int idInsurance,
    required String? insuranceName,
    required String memberNumber,
    required DateTime expireDate,
    required String token,
  }) = _AddMemberUpdateInsuranceParams;
}
