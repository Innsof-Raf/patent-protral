import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/models/slot_model/slot_model.dart';

part 'shift_model.freezed.dart';
part 'shift_model.g.dart';

@freezed
sealed class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    @JsonKey(name: 'slots') required List<SlotModel> slots,
    @JsonKey(name: 'shift_detail') required String shift,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}
