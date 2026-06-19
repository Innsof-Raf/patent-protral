// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/profile/data/models/member_document_model.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

part 'generated/member_model.freezed.dart';
part 'generated/member_model.g.dart';

@freezed
sealed class MemberModel with _$MemberModel {
  const MemberModel._();

  const factory MemberModel({
    @JsonKey(name: 'Id', fromJson: intFromJson) required int id,
    @JsonKey(name: 'Name', fromJson: stringFromJson) required String name,
    @JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson)
    String? mobileNo,
    @JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson)
    String? emailId,
    @JsonKey(name: 'Age', fromJson: stringFromJson) required String age,
    @JsonKey(name: 'SSN', fromJson: stringFromJson) required String nationalId,
    @JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson)
    String? profileImage,
    @JsonKey(name: 'Is_Insu', fromJson: boolFromJson) required bool isInsurance,
    @JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson)
    required bool isInsuranceExpired,
    @JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson)
    @Default(null)
    DateTime? insuranceExpDttm,
    @JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson)
    @Default(null)
    DateTime? dob,
    @JsonKey(name: 'member_no', fromJson: _nullableStringFromJson)
    String? memberNo,
    @JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson)
    String? insuranceName,
    @JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) int? insuranceId,
    @JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) String? gender,
    @JsonKey(name: 'docs') @Default([]) List<MmemberDocumentModel> memberDocs,
    @Default(false) bool isSelected,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(_normalizeMemberJson(json));

  Member toEntity() {
    return Member(
      id: id,
      name: name,
      mobileNo: mobileNo,
      emailId: emailId,
      age: age,
      nationalId: nationalId,
      profileImage: profileImage,
      isInsurance: isInsurance,
      isInsuranceExpired: isInsuranceExpired,
      insuranceExpDttm: insuranceExpDttm,
      dob: dob,
      memberNo: memberNo,
      insuranceName: insuranceName,
      insuranceId: insuranceId,
      gender: gender,
      memberDocs: memberDocs.map((e) => e.toEntity()).toList(),
      isSelected: isSelected,
    );
  }
}

String? _nullableStringFromJson(Object? value) {
  final text = value?.toString();
  return text == null || text.isEmpty ? null : text;
}

int? _nullableIntFromJson(Object? value) {
  if (value == null) return null;
  final parsed = intFromJson(value);
  return parsed == 0 && value.toString() != '0' ? null : parsed;
}

DateTime? _nullableDateTimeFromJson(Object? value) {
  if (value == null) return null;
  final text = value.toString();
  if (text.isEmpty) return null;
  return DateTime.tryParse(text);
}

Map<String, dynamic> _normalizeMemberJson(Map<String, dynamic> json) {
  if (json.containsKey('Id') || json.containsKey('Name')) {
    return json;
  }

  return {
    'Id': json['id_customer'] ?? json['Id'],
    'Name': json['customer_name'] ?? json['Name'],
    'MobileNo': json['mobile_no'] ?? json['MobileNo'],
    'EmailID': json['email'] ?? json['EmailID'],
    'Age': json['age'] ?? json['Age'],
    'SSN': json['national_id'] ?? json['SSN'],
    'Profile_Img': json['profile_img'] ?? json['Profile_Img'],
    'Is_Insu': json['is_insurance'] ?? json['Is_Insu'] ?? false,
    'Is_InsuExpired':
        json['is_insurance_expired'] ?? json['Is_InsuExpired'] ?? false,
    'Insur_Exp': json['expiry_dt'] ?? json['Insur_Exp'],
    'Dob': json['dob'] ?? json['Dob'],
    'member_no': json['member_no'],
    'insur_name': json['insurance_name'] ?? json['insur_name'],
    'insu_id': json['id_insurance'] ?? json['insu_id'],
    'Gender': json['gender'] ?? json['Gender'],
    'docs': json['docs'] ?? const [],
    'isSelected': json['isSelected'] ?? false,
  };
}
