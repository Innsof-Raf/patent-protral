import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/slot.freezed.dart';

@freezed
sealed class Slot with _$Slot {
  const factory Slot({
    required String id,
    required String label,
    required DateTime appdttm,
    required bool isBooked,
  }) = _Slot;
}
