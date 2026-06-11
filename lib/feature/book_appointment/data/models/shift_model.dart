import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/data/models/slot_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';

part 'generated/shift_model.freezed.dart';

@freezed
sealed class ShiftModel with _$ShiftModel {
  const ShiftModel._();

  const factory ShiftModel({
    required List<SlotModel> slots,
    required String shift,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) {
    return ShiftModel(
      slots: (json['slots'] as List)
          .map((slot) => SlotModel.fromJson(slot as Map<String, dynamic>))
          .toList(),
      shift: json['shift_detail'] as String,
    );
  }

  Shift toEntity() => Shift(
        slots: slots.map((slot) => slot.toEntity()).toList(),
        shift: shift,
      );
}
