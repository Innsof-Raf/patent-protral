import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/book_appointment_params.freezed.dart';

@freezed
sealed class BookAppointmentParams with _$BookAppointmentParams {
  const factory BookAppointmentParams.getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) = _GetAvailableSlotsParams;

  const factory BookAppointmentParams.bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) = _BookAppointmentParams;

  const factory BookAppointmentParams.rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  }) = _RescheduleAppointmentParams;
}

