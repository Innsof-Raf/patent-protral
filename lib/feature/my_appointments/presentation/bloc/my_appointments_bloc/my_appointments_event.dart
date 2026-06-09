part of 'my_appointments_bloc.dart';

@freezed
sealed class MyAppointmentsEvent with _$MyAppointmentsEvent {
  const factory MyAppointmentsEvent.getMyAppointments({
    required String token,
    required String mobileNumber,
  }) = GetMyAppointments;

  const factory MyAppointmentsEvent.storeBokkedApoointment({
    required MyAppointmentModel appointment,
  }) = StoreBokkedApoointment;

  const factory MyAppointmentsEvent.changeResheduledAppointmentDetails({
    required MyAppointmentModel appointment,
    required DateTime cureentSlot,
  }) = ChangeResheduledAppointmentDetails;

  const factory MyAppointmentsEvent.cancelAppointment({
    required int idAppointment,
    required String token,
  }) = CancelAppointment;
}
