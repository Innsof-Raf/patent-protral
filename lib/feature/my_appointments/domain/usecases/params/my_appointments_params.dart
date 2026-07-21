import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

part 'generated/my_appointments_params.freezed.dart';
part 'generated/my_appointments_params.g.dart';

@Freezed(toJson: true, fromJson: false)
sealed class MyAppointmentsParams with _$MyAppointmentsParams {
  const factory MyAppointmentsParams.getMyAppointments({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
    @Default('ALL') String status,
  }) = GetMyAppointmentsParams;

  const factory MyAppointmentsParams.storeBookedAppointment({
    @JsonKey(includeToJson: false, includeFromJson: false)
    required MyAppointment appointment,
  }) = StoreBookedAppointmentParams;

  const factory MyAppointmentsParams.changeRescheduledAppointmentDetails({
    @JsonKey(includeToJson: false, includeFromJson: false)
    required MyAppointment appointment,
    required DateTime currentSlot,
  }) = ChangeRescheduledAppointmentDetailsParams;

  const factory MyAppointmentsParams.cancelAppointment({
    @JsonKey(name: 'id_appmnt') required int appointmentId,
    @JsonKey(includeToJson: false) required String token,
  }) = CancelAppointmentParams;
}
