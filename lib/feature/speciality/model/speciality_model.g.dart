// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecilityModel _$SpecilityModelFromJson(Map<String, dynamic> json) =>
    _SpecilityModel(
      idSpeciality: (json['id_dept'] as num).toInt(),
      specialityId: json['dept_id'] as String,
      specialityName: json['dept_name'] as String,
      specialityImage: json['dept_img'] as String?,
    );

Map<String, dynamic> _$SpecilityModelToJson(_SpecilityModel instance) =>
    <String, dynamic>{
      'id_dept': instance.idSpeciality,
      'dept_id': instance.specialityId,
      'dept_name': instance.specialityName,
      'dept_img': instance.specialityImage,
    };
