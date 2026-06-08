// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../member_document_model/member_document_model.dart';

part 'generated/member_model.freezed.dart';
part 'generated/member_model.g.dart';

@freezed
sealed class MemberModel with _$MemberModel {
  const factory MemberModel({
    @JsonKey(name: "Id") required int id,
    @JsonKey(name: "Name") required String name,
    @Default(null) @JsonKey(name: "MobileNo") String? mobileNo,
    @Default(null) @JsonKey(name: "EmailID") String? emailId,
    @JsonKey(name: "Age") required String age,
    @JsonKey(name: "SSN") required String nationalId,
    @Default(null) @JsonKey(name: "Profile_Img") String? profileImage,
    @JsonKey(name: "Is_Insu") required bool isInsurance,
    @JsonKey(name: "Is_InsuExpired") required bool isInsuranceExpired,
    @JsonKey(name: "Insur_Exp") @Default(null) DateTime? insuranceExpDttm,
    @JsonKey(name: "Dob") @Default(null) DateTime? dob,
    @JsonKey(name: "member_no") @Default(null) String? memberNo,
    @JsonKey(name: "insur_name") @Default(null) String? insuranceName,
    @JsonKey(name: "insu_id") @Default(null) int? insuranceId,
    @JsonKey(name: "Gender") @Default(null) String? gender,
    @JsonKey(name: 'docs') @Default([]) List<MmemberDocumentModel> memberDocs,
    @Default(false) bool isSelected,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
