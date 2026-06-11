import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/data/models/slot_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';

part 'generated/shift_model.freezed.dart';
part 'generated/shift_model.g.dart';

@freezed
sealed class ShiftModel with _$ShiftModel {
  const ShiftModel._();

  const factory ShiftModel({
    @Default([]) List<SlotModel> slots,
    @Default('') @JsonKey(name: 'shift_detail') String shift,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);

  Shift toEntity() =>
      Shift(slots: slots.map((slot) => slot.toEntity()).toList(), shift: shift);
}
