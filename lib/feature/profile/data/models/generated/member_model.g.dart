// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => _MemberModel(
  id: intFromJson(json['Id']),
  name: stringFromJson(json['Name']),
  mobileNo: _nullableStringFromJson(json['MobileNo']),
  emailId: _nullableStringFromJson(json['EmailID']),
  age: stringFromJson(json['Age']),
  nationalId: stringFromJson(json['SSN']),
  profileImage: _nullableStringFromJson(json['Profile_Img']),
  isInsurance: boolFromJson(json['Is_Insu']),
  isInsuranceExpired: boolFromJson(json['Is_InsuExpired']),
  insuranceExpDttm: json['Insur_Exp'] == null
      ? null
      : _nullableDateTimeFromJson(json['Insur_Exp']),
  dob: json['Dob'] == null ? null : _nullableDateTimeFromJson(json['Dob']),
  memberNo: _nullableStringFromJson(json['member_no']),
  insuranceName: _nullableStringFromJson(json['insur_name']),
  insuranceId: _nullableIntFromJson(json['insu_id']),
  gender: _nullableStringFromJson(json['Gender']),
  memberDocs:
      (json['docs'] as List<dynamic>?)
          ?.map((e) => MmemberDocumentModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isSelected: json['isSelected'] as bool? ?? false,
);

Map<String, dynamic> _$MemberModelToJson(_MemberModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'MobileNo': instance.mobileNo,
      'EmailID': instance.emailId,
      'Age': instance.age,
      'SSN': instance.nationalId,
      'Profile_Img': instance.profileImage,
      'Is_Insu': instance.isInsurance,
      'Is_InsuExpired': instance.isInsuranceExpired,
      'Insur_Exp': instance.insuranceExpDttm?.toIso8601String(),
      'Dob': instance.dob?.toIso8601String(),
      'member_no': instance.memberNo,
      'insur_name': instance.insuranceName,
      'insu_id': instance.insuranceId,
      'Gender': instance.gender,
      'docs': instance.memberDocs,
      'isSelected': instance.isSelected,
    };
