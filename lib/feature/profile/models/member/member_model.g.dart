// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberModel _$$_MemberModelFromJson(Map<String, dynamic> json) =>
    _$_MemberModel(
      id: json['Id'] as int,
      name: json['Name'] as String,
      mobileNo: json['MobileNo'] as String? ?? null,
      emailId: json['EmailID'] as String? ?? null,
      age: json['Age'] as String,
      nationalId: json['SSN'] as String,
      profileImage: json['Profile_Img'] as String? ?? null,
      isInsurance: json['Is_Insu'] as bool,
      isInsuranceExpired: json['Is_InsuExpired'] as bool,
      insuranceExpDttm: json['Insur_Exp'] == null
          ? null
          : DateTime.parse(json['Insur_Exp'] as String) ?? null,
      dob: json['Dob'] == null
          ? null
          : DateTime.parse(json['Dob'] as String) ?? null,
      memberNo: json['member_no'] as String? ?? null,
      insuranceName: json['insur_name'] as String? ?? null,
      insuranceId: json['insu_id'] as int? ?? null,
      gender: json['Gender'] as String? ?? null,
      memberDocs: (json['docs'] as List<dynamic>?)
              ?.map((e) =>
                  MmemberDocumentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MemberModelToJson(_$_MemberModel instance) =>
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
    };
