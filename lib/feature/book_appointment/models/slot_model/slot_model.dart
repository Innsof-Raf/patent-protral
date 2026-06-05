// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'slot_model.freezed.dart';
part 'slot_model.g.dart';

@freezed
class SlotModel with _$SlotModel {
  const factory SlotModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "appdttm") required DateTime appdttm,
    @JsonKey(name: "booked") required bool isBooked,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) =>
      _$SlotModelFromJson(json);
}
