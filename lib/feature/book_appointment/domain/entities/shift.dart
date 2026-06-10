import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

class Shift {
  final List<Slot> slots;
  final String shift;

  const Shift({
    required this.slots,
    required this.shift,
  });

  Shift copyWith({
    List<Slot>? slots,
    String? shift,
  }) {
    return Shift(
      slots: slots ?? this.slots,
      shift: shift ?? this.shift,
    );
  }
}
