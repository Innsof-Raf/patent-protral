// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  slots: (json['slots'] as List<dynamic>)
      .map((e) => SlotModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  shift: json['shift_detail'] as String,
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{'slots': instance.slots, 'shift_detail': instance.shift};
