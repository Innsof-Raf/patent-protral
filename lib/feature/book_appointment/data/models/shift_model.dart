import 'package:patient_portal/feature/book_appointment/data/models/slot_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';

class ShiftModel {
  final List<SlotModel> slots;
  final String shift;

  const ShiftModel({
    required this.slots,
    required this.shift,
  });

  factory ShiftModel.fromJson(Map<String, dynamic> json) {
    return ShiftModel(
      slots: (json['slots'] as List)
          .map((slot) => SlotModel.fromJson(slot as Map<String, dynamic>))
          .toList(),
      shift: json['shift_detail'] as String,
    );
  }

  Shift toEntity() {
    return Shift(
      slots: slots.map((slot) => slot.toEntity()).toList(),
      shift: shift,
    );
  }
}
