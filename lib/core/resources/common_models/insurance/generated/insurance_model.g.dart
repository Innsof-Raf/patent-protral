// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../insurance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InsuranceModel _$InsuranceModelFromJson(Map<String, dynamic> json) =>
    _InsuranceModel(
      idInsurance: (json['id_insurance'] as num).toInt(),
      insuranceName: json['ins_name'] as String,
      img: json['Img'] as String? ?? null,
    );

Map<String, dynamic> _$InsuranceModelToJson(_InsuranceModel instance) =>
    <String, dynamic>{
      'id_insurance': instance.idInsurance,
      'ins_name': instance.insuranceName,
      'Img': instance.img,
    };
