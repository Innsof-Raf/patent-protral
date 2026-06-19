import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

part 'generated/my_appointments_params.freezed.dart';

@freezed
sealed class MyAppointmentsParams with _$MyAppointmentsParams {
  const factory MyAppointmentsParams.getMyAppointments({
    required String token,
    required String mobileNumber,
  }) = GetMyAppointmentsParams;

  const factory MyAppointmentsParams.storeBookedAppointment({
    required MyAppointment appointment,
  }) = StoreBookedAppointmentParams;

  const factory MyAppointmentsParams.changeRescheduledAppointmentDetails({
    required MyAppointment appointment,
    required DateTime currentSlot,
  }) = ChangeRescheduledAppointmentDetailsParams;

  const factory MyAppointmentsParams.cancelAppointment({
    required int appointmentId,
    required String token,
  }) = CancelAppointmentParams;
}
