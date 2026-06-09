part of 'slot_bloc.dart';

@freezed
class SlotEvent with _$SlotEvent {
  const factory SlotEvent.getAvailableSlots({
    required int idDoctor,
    required DateTime date,
    required String token,
  }) = GetAvailableSlots;
  const factory SlotEvent.changeBookedSlotState({required DateTime slotTime}) =
      ChangeBookedSlotState;
  const factory SlotEvent.changeResheduledSlotState({
    required DateTime oldSlot,
    required DateTime currentSlot,
  }) = ChangeResheduledSlotState;
}
