// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecilityModel _$$_SpecilityModelFromJson(Map<String, dynamic> json) =>
    _$_SpecilityModel(
      idSpeciality: json['id_dept'] as int,
      specialityId: json['dept_id'] as String,
      specialityName: json['dept_name'] as String,
      specialityImage: json['dept_img'] as String?,
    );

Map<String, dynamic> _$$_SpecilityModelToJson(_$_SpecilityModel instance) =>
    <String, dynamic>{
      'id_dept': instance.idSpeciality,
      'dept_id': instance.specialityId,
      'dept_name': instance.specialityName,
      'dept_img': instance.specialityImage,
    };
