// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceModel _$$_InsuranceModelFromJson(Map<String, dynamic> json) =>
    _$_InsuranceModel(
      idInsurance: json['id_insurance'] as int,
      insuranceName: json['ins_name'] as String,
      img: json['Img'] as String? ?? null,
    );

Map<String, dynamic> _$$_InsuranceModelToJson(_$_InsuranceModel instance) =>
    <String, dynamic>{
      'id_insurance': instance.idInsurance,
      'ins_name': instance.insuranceName,
      'Img': instance.img,
    };
