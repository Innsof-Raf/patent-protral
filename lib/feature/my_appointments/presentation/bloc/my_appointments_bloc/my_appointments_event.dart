part of 'my_appointments_bloc.dart';

@freezed
sealed class MyAppointmentsEvent with _$MyAppointmentsEvent {
  const factory MyAppointmentsEvent.getMyAppointments({
    required MyAppointmentsParams params,
  }) = GetMyAppointments;

  const factory MyAppointmentsEvent.storeBookedAppointment({
    required MyAppointmentsParams params,
  }) = StoreBookedAppointment;

  const factory MyAppointmentsEvent.changeRescheduledAppointmentDetails({
    required MyAppointmentsParams params,
  }) = ChangeRescheduledAppointmentDetails;

  const factory MyAppointmentsEvent.cancelAppointment({
    required MyAppointmentsParams params,
  }) = CancelAppointment;
}
