// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceModel _$$_InsuranceModelFromJson(Map<String, dynamic> json) =>
    _$_InsuranceModel(
      id: json['ID'] as int,
      image: json['Img'] as String? ?? null,
      insuranceName: json['Name'] as String,
    );

Map<String, dynamic> _$$_InsuranceModelToJson(_$_InsuranceModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Img': instance.image,
      'Name': instance.insuranceName,
    };
