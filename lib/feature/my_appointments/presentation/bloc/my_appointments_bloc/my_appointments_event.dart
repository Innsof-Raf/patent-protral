part of 'my_appointments_bloc.dart';

@freezed
sealed class MyAppointmentsEvent with _$MyAppointmentsEvent {
  const factory MyAppointmentsEvent.getMyAppointments({
    required MyAppointmentsParams params,
  }) = GetMyAppointments;

  const factory MyAppointmentsEvent.storeBokkedApoointment({
    required MyAppointmentsParams params,
  }) = StoreBokkedApoointment;

  const factory MyAppointmentsEvent.changeResheduledAppointmentDetails({
    required MyAppointmentsParams params,
  }) = ChangeResheduledAppointmentDetails;

  const factory MyAppointmentsEvent.cancelAppointment({
    required MyAppointmentsParams params,
  }) = CancelAppointment;
}
