// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
  doctorId: json['employee_id'] as String,
  idDoctor: intFromJson(json['id_employee']),
  idBusUnit: intFromJson(json['id_busunit']),
  busUnitName: json['busunit_name'] as String,
  doctorName: json['employee_name'] as String,
  departmentName: json['dept_name'] as String,
  doctorSpecility: json['speciality'] as String,
  experience: json['experience'] as String,
  branch: json['branch'] as String,
  languages: (json['Language_Known'] as List<dynamic>)
      .map((e) => LanguageKnownModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  doctorImage: json['profileUrl'] as String,
  consultationFee: doubleFromJson(json['cons_fee']),
  doctorBio: json['employee_bio'] as String?,
);

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'employee_id': instance.doctorId,
      'id_employee': instance.idDoctor,
      'id_busunit': instance.idBusUnit,
      'busunit_name': instance.busUnitName,
      'employee_name': instance.doctorName,
      'dept_name': instance.departmentName,
      'speciality': instance.doctorSpecility,
      'experience': instance.experience,
      'branch': instance.branch,
      'Language_Known': instance.languages,
      'profileUrl': instance.doctorImage,
      'cons_fee': instance.consultationFee,
      'employee_bio': instance.doctorBio,
    };
