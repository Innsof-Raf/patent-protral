import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

part 'generated/slot_model.freezed.dart';
part 'generated/slot_model.g.dart';

@freezed
sealed class SlotModel with _$SlotModel {
  const SlotModel._();

  const factory SlotModel({
    required String id,
    required String label,
    required DateTime appdttm,
    @JsonKey(name: 'booked') required bool isBooked,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) =>
      _$SlotModelFromJson(json);

  Slot toEntity() =>
      Slot(id: id, label: label, appdttm: appdttm, isBooked: isBooked);
}
