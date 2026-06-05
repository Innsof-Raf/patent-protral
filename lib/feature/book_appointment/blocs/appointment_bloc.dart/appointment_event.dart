part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.bookNewAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) = BookNewAppointment;
  const factory AppointmentEvent.resheduleAppointment({
    required int idAppointment,
    required DateTime appointmentDateTime,
    required String token,
  }) = ResheduleAppointment;
}
