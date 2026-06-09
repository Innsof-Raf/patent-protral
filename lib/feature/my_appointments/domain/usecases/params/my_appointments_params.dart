import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';

part 'generated/my_appointments_params.freezed.dart';

@freezed
sealed class MyAppointmentsParams with _$MyAppointmentsParams {
  const factory MyAppointmentsParams.getMyAppointments({
    required String token,
    required String mobileNumber,
  }) = GetMyAppointmentsParams;

  const factory MyAppointmentsParams.storeBokkedApoointment({
    required MyAppointmentModel appointment,
  }) = StoreBokkedApoointmentParams;

  const factory MyAppointmentsParams.changeResheduledAppointmentDetails({
    required MyAppointmentModel appointment,
    required DateTime cureentSlot,
  }) = ChangeResheduledAppointmentDetailsParams;

  const factory MyAppointmentsParams.cancelAppointment({
    required int idAppointment,
    required String token,
  }) = CancelAppointmentParams;
}
