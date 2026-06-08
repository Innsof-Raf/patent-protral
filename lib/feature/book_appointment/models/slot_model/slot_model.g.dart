// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SlotModel _$SlotModelFromJson(Map<String, dynamic> json) => _SlotModel(
  id: json['id'] as String,
  label: json['label'] as String,
  appdttm: DateTime.parse(json['appdttm'] as String),
  isBooked: json['booked'] as bool,
);

Map<String, dynamic> _$SlotModelToJson(_SlotModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'appdttm': instance.appdttm.toIso8601String(),
      'booked': instance.isBooked,
    };
