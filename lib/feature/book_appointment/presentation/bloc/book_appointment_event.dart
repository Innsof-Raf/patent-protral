part of 'book_appointment_bloc.dart';

@freezed
sealed class BookAppointmentEvent with _$BookAppointmentEvent {
  const factory BookAppointmentEvent.bookNewAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) = BookNewAppointment;

  const factory BookAppointmentEvent.resheduleAppointment({
    required int idAppointment,
    required DateTime appointmentDateTime,
    required String token,
  }) = ResheduleAppointment;

  const factory BookAppointmentEvent.getAvailableSlots({
    required int idDoctor,
    required DateTime date,
    required String token,
  }) = GetAvailableSlots;

  const factory BookAppointmentEvent.changeBookedSlotState({
    required DateTime slotTime,
  }) = ChangeBookedSlotState;

  const factory BookAppointmentEvent.changeResheduledSlotState({
    required DateTime oldSlot,
    required DateTime currentSlot,
  }) = ChangeResheduledSlotState;
}
