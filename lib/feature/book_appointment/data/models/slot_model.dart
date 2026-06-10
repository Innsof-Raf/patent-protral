import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

class SlotModel {
  final String id;
  final String label;
  final DateTime appdttm;
  final bool isBooked;

  const SlotModel({
    required this.id,
    required this.label,
    required this.appdttm,
    required this.isBooked,
  });

  factory SlotModel.fromJson(Map<String, dynamic> json) {
    return SlotModel(
      id: json['id'] as String,
      label: json['label'] as String,
      appdttm: DateTime.parse(json['appdttm'] as String),
      isBooked: json['booked'] as bool,
    );
  }

  Slot toEntity() {
    return Slot(
      id: id,
      label: label,
      appdttm: appdttm,
      isBooked: isBooked,
    );
  }
}
