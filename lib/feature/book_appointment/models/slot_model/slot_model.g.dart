// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlotModel _$$_SlotModelFromJson(Map<String, dynamic> json) => _$_SlotModel(
      id: json['id'] as String,
      label: json['label'] as String,
      appdttm: DateTime.parse(json['appdttm'] as String),
      isBooked: json['booked'] as bool,
    );

Map<String, dynamic> _$$_SlotModelToJson(_$_SlotModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'appdttm': instance.appdttm.toIso8601String(),
      'booked': instance.isBooked,
    };
