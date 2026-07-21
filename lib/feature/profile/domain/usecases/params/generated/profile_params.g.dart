// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../profile_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$StoreUserDetailsParamsToJson(
  StoreUserDetailsParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};

Map<String, dynamic> _$AddMemberParamsToJson(AddMemberParams instance) =>
    <String, dynamic>{
      'patientName': instance.patientName,
      'nationalId': instance.nationalId,
      'email': instance.email,
      'mobileNumber': instance.mobileNumber,
      'gender': instance.gender,
      'dob': instance.dob.toIso8601String(),
      'idInsurance': instance.idInsurance,
      'memberNumber': instance.memberNumber,
      'expireDate': instance.expireDate?.toIso8601String(),
      'otherInsuranceName': instance.otherInsuranceName,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$ChangeMemberInsuranceDetailsParamsToJson(
  ChangeMemberInsuranceDetailsParams instance,
) => <String, dynamic>{
  'id_insurance': instance.idInsurance,
  'id_customer': instance.memberId,
  'insurance_name': instance.insuranceName,
  'member_no': instance.memberNumber,
  'expiry_dt': instance.expireDate.toIso8601String(),
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$GetMemberDetailParamsToJson(
  GetMemberDetailParams instance,
) => <String, dynamic>{
  'id_customer': instance.memberId,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$AddMemberToLocalParamsToJson(
  AddMemberToLocalParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};

Map<String, dynamic> _$UpdateMemberInLocalParamsToJson(
  UpdateMemberInLocalParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};
