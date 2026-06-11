import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';

part 'generated/shift.freezed.dart';

@freezed
sealed class Shift with _$Shift {
  const factory Shift({
    required List<Slot> slots,
    required String shift,
  }) = _Shift;
}
