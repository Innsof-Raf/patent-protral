// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
  doctorId: stringFromJson(json['employee_id']),
  idDoctor: intFromJson(json['id_employee']),
  idDept: json['id_dept'] == null ? 0 : intFromJson(json['id_dept']),
  idBusUnit: intFromJson(json['id_busunit']),
  busUnitName: stringFromJson(json['busunit_name']),
  doctorName: stringFromJson(json['employee_name']),
  departmentName: stringFromJson(json['dept_name']),
  doctorSpeciality: stringFromJson(_readDoctorSpeciality(json, 'speciality')),
  experience: stringFromJson(json['experience']),
  branch: stringFromJson(json['branch']),
  languages: _languagesFromJson(_readLanguages(json, 'Language_Known')),
  doctorImage: stringFromJson(json['profileUrl']),
  consultationFee: doubleFromJson(json['cons_fee']),
  onlineConsultationFee: doubleFromJson(json['online_cons_fee']),
  isOnline: boolFromJson(json['isOnline']),
  doctorBio: _nullableStringFromJson(json['employee_bio']),
);

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'employee_id': instance.doctorId,
      'id_employee': instance.idDoctor,
      'id_dept': instance.idDept,
      'id_busunit': instance.idBusUnit,
      'busunit_name': instance.busUnitName,
      'employee_name': instance.doctorName,
      'dept_name': instance.departmentName,
      'speciality': instance.doctorSpeciality,
      'experience': instance.experience,
      'branch': instance.branch,
      'Language_Known': instance.languages,
      'profileUrl': instance.doctorImage,
      'cons_fee': instance.consultationFee,
      'online_cons_fee': instance.onlineConsultationFee,
      'isOnline': instance.isOnline,
      'employee_bio': instance.doctorBio,
    };
