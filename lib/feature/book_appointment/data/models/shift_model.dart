import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/data/models/slot_model.dart';

part 'generated/shift_model.freezed.dart';
part 'generated/shift_model.g.dart';

@freezed
sealed class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    @JsonKey(name: 'slots') required List<SlotModel> slots,
    @JsonKey(name: 'shift_detail') required String shift,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}
