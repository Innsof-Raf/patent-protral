import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

part 'generated/slot_model.freezed.dart';

@freezed
sealed class SlotModel with _$SlotModel {
  const SlotModel._();

  const factory SlotModel({
    required String id,
    required String label,
    required DateTime appdttm,
    required bool isBooked,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) {
    return SlotModel(
      id: json['id'] as String,
      label: json['label'] as String,
      appdttm: DateTime.parse(json['appdttm'] as String),
      isBooked: json['booked'] as bool,
    );
  }

  Slot toEntity() => Slot(
        id: id,
        label: label,
        appdttm: appdttm,
        isBooked: isBooked,
      );
}
