import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

part 'generated/slot_model.freezed.dart';
part 'generated/slot_model.g.dart';

@freezed
sealed class SlotModel with _$SlotModel {
  const SlotModel._();

  const factory SlotModel({
    @Default('') @JsonKey(fromJson: stringFromJson) String id,
    @JsonKey(readValue: _readLabel, fromJson: stringFromJson)
    required String label,
    required DateTime appdttm,
    @Default(false) @JsonKey(name: 'booked', fromJson: boolFromJson)
    bool isBooked,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) =>
      _$SlotModelFromJson(json);

  Slot toEntity() =>
      Slot(id: id, label: label, appdttm: appdttm, isBooked: isBooked);
}

Object? _readLabel(Map json, String key) => json['label'] ?? json['tod'];
