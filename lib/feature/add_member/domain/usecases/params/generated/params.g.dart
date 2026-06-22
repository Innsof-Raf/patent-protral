// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetInsurancesParamsToJson(
  _GetInsurancesParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};

Map<String, dynamic> _$AddMemberAddMemberParamsToJson(
  _AddMemberAddMemberParams instance,
) => <String, dynamic>{
  'mobile_no': instance.mobileNumber,
  'customer_name': instance.patientName,
  'national_id': instance.nationalId,
  'gender': instance.gender,
  'dob': instance.dob.toIso8601String(),
  'email': instance.email,
  'id_insurance': instance.idInsurance,
  'member_no': instance.memberNumber,
  'expiry_dt': instance.expireDate?.toIso8601String(),
  'others': instance.otherInsuranceName,
  'id_customer': instance.idCustomer,
  'customer_id': instance.customerId,
  'id_setid': instance.idSetid,
  'customer_status': instance.customerStatus,
  'customer_type': instance.customerType,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$AddMemberUpdateInsuranceParamsToJson(
  _AddMemberUpdateInsuranceParams instance,
) => <String, dynamic>{
  'id_customer': instance.memberId,
  'id_insurance': instance.idInsurance,
  'insurance_name': instance.insuranceName,
  'member_number': instance.memberNumber,
  'expire_date': instance.expireDate.toIso8601String(),
  'runtimeType': instance.$type,
};
