// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../speciality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecialityModel _$SpecialityModelFromJson(Map<String, dynamic> json) =>
    _SpecialityModel(
      idSpeciality: (json['id_dept'] as num).toInt(),
      specialityId: json['dept_id'] as String,
      specialityName: json['dept_name'] as String,
      specialityImage: json['dept_img'] as String?,
    );

Map<String, dynamic> _$SpecialityModelToJson(_SpecialityModel instance) =>
    <String, dynamic>{
      'id_dept': instance.idSpeciality,
      'dept_id': instance.specialityId,
      'dept_name': instance.specialityName,
      'dept_img': instance.specialityImage,
    };
