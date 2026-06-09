import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';

part 'generated/profile_params.freezed.dart';

@freezed
sealed class ProfileParams with _$ProfileParams {
  const factory ProfileParams.storeUserDetails({required UserModel user}) =
      StoreUserDetailsParams;

  const factory ProfileParams.addMember({
    UserModel? user,
    required String patientName,
    required String nationalId,
    String? email,
    required String gender,
    required DateTime dob,
    int? idInsurance,
    String? memberNumber,
    File? profileImage,
    DateTime? expireDate,
    String? otherInsuranceName,
  }) = AddMemberParams;

  const factory ProfileParams.changeMemberInsuranceDetails({
    String? token,
    required int idInsurance,
    required int memberId,
    required String? insuranceName,
    required String memberNumber,
    required DateTime expireDate,
  }) = ChangeMemberInsuranceDetailsParams;

  const factory ProfileParams.getMemberDetail({
    required int memberId,
    String? token,
  }) = GetMemberDetailParams;

  const factory ProfileParams.addMemberToLocal({required MemberModel member}) =
      AddMemberToLocalParams;

  const factory ProfileParams.updateMemberInLocal({
    required MemberModel member,
  }) = UpdateMemberInLocalParams;
}
