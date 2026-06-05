// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorModel _$$_DoctorModelFromJson(Map<String, dynamic> json) =>
    _$_DoctorModel(
      doctorId: json['employee_id'] as String,
      idDoctor: json['id_employee'] as int,
      idBusUnit: json['id_busunit'] as int,
      busUnitName: json['busunit_name'] as String,
      doctorName: json['employee_name'] as String,
      departmentName: json['dept_name'] as String,
      doctorSpecility: json['speciality'] as String,
      experience: json['experience'] as String,
      branch: json['branch'] as String,
      knownLanguages: (json['Language_Known'] as List<dynamic>)
          .map((e) => LanguageKnownModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      doctorImage: json['profileUrl'] as String,
      consultationFee: (json['cons_fee'] as num).toDouble(),
      doctorBio: json['employee_bio'] as String?,
    );

Map<String, dynamic> _$$_DoctorModelToJson(_$_DoctorModel instance) =>
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
      'Language_Known': instance.knownLanguages,
      'profileUrl': instance.doctorImage,
      'cons_fee': instance.consultationFee,
      'employee_bio': instance.doctorBio,
    };
