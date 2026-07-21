import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

part 'generated/profile_params.freezed.dart';
part 'generated/profile_params.g.dart';

@Freezed(toJson: true, fromJson: false)
sealed class ProfileParams with _$ProfileParams {
  const factory ProfileParams.storeUserDetails({
    @JsonKey(includeToJson: false, includeFromJson: false) required User user,
  }) = StoreUserDetailsParams;

  const factory ProfileParams.addMember({
    @JsonKey(includeToJson: false, includeFromJson: false) User? user,
    required String patientName,
    required String nationalId,
    String? email,
    String? mobileNumber,
    required String gender,
    required DateTime dob,
    int? idInsurance,
    String? memberNumber,
    @JsonKey(includeToJson: false, includeFromJson: false) File? profileImage,
    DateTime? expireDate,
    String? otherInsuranceName,
  }) = AddMemberParams;

  const factory ProfileParams.changeMemberInsuranceDetails({
    @JsonKey(includeToJson: false) String? token,
    @JsonKey(name: 'id_insurance') required int idInsurance,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'insurance_name') required String? insuranceName,
    @JsonKey(name: 'member_no') required String memberNumber,
    @JsonKey(name: 'expiry_dt') required DateTime expireDate,
  }) = ChangeMemberInsuranceDetailsParams;

  const factory ProfileParams.getMemberDetail({
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(includeToJson: false) String? token,
  }) = GetMemberDetailParams;

  const factory ProfileParams.addMemberToLocal({
    @JsonKey(includeToJson: false, includeFromJson: false)
    required Member member,
  }) = AddMemberToLocalParams;

  const factory ProfileParams.updateMemberInLocal({
    @JsonKey(includeToJson: false, includeFromJson: false)
    required Member member,
  }) = UpdateMemberInLocalParams;
}
