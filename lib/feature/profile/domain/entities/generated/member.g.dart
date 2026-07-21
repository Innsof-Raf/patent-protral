// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  mobileNo: json['mobileNo'] as String?,
  emailId: json['emailId'] as String?,
  age: json['age'] as String,
  nationalId: json['nationalId'] as String,
  profileImage: json['profileImage'] as String?,
  isInsurance: json['isInsurance'] as bool,
  isInsuranceExpired: json['isInsuranceExpired'] as bool,
  insuranceExpDttm: json['insuranceExpDttm'] == null
      ? null
      : DateTime.parse(json['insuranceExpDttm'] as String),
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  memberNo: json['memberNo'] as String?,
  insuranceName: json['insuranceName'] as String?,
  insuranceId: (json['insuranceId'] as num?)?.toInt(),
  gender: json['gender'] as String?,
  memberDocs:
      (json['memberDocs'] as List<dynamic>?)
          ?.map((e) => MemberDocument.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isSelected: json['isSelected'] as bool? ?? false,
);

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'mobileNo': instance.mobileNo,
  'emailId': instance.emailId,
  'age': instance.age,
  'nationalId': instance.nationalId,
  'profileImage': instance.profileImage,
  'isInsurance': instance.isInsurance,
  'isInsuranceExpired': instance.isInsuranceExpired,
  'insuranceExpDttm': instance.insuranceExpDttm?.toIso8601String(),
  'dob': instance.dob?.toIso8601String(),
  'memberNo': instance.memberNo,
  'insuranceName': instance.insuranceName,
  'insuranceId': instance.insuranceId,
  'gender': instance.gender,
  'memberDocs': instance.memberDocs,
  'isSelected': instance.isSelected,
};
