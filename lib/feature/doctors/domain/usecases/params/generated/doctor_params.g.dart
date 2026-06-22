// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../doctor_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAvailableDoctorsParams _$GetAvailableDoctorsParamsFromJson(
  Map<String, dynamic> json,
) => GetAvailableDoctorsParams(
  specialityId: (json['id_dept'] as num).toInt(),
  token: json['token'] as String,
);

Map<String, dynamic> _$GetAvailableDoctorsParamsToJson(
  GetAvailableDoctorsParams instance,
) => <String, dynamic>{'id_dept': instance.specialityId};
