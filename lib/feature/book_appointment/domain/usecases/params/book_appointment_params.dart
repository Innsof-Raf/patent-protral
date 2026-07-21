import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/book_appointment_params.freezed.dart';
part 'generated/book_appointment_params.g.dart';

@Freezed(toJson: true, fromJson: false)
sealed class BookAppointmentParams with _$BookAppointmentParams {
  const factory BookAppointmentParams.getAvailableSlots({
    @JsonKey(name: 'id_doctor') required int idDoctor,
    @JsonKey(includeToJson: false) required DateTime date,
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'shift_dt') String? shiftDt,
  }) = _GetAvailableSlotsParams;

  const factory BookAppointmentParams.bookAppointment({
    @JsonKey(name: 'id_employee') required int idDoctor,
    @JsonKey(name: 'appmnt_dttm') required DateTime appointmentDateTime,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'id_customer') required int idMember,
    @JsonKey(includeToJson: false) required String token,
    @Default(0) int id,
    @Default(1) @JsonKey(name: 'id_busunit') int idBusunit,
    @Default('Offline') @JsonKey(name: 'appmnt_mode') String appmntMode,
    @JsonKey(name: 'appmnt_dt') String? appmntDt,
    @JsonKey(name: 'appmnt_time') String? appmntTime,
    @JsonKey(name: 'patient_mobileno') String? patientMobileNo,
  }) = _BookNewAppointmentParams;

  const factory BookAppointmentParams.rescheduleAppointment({
    @JsonKey(name: 'appmnt_dttm') required DateTime appointmentDateTime,
    @JsonKey(name: 'id') required int idAppointment,
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'appmnt_dt') String? appmntDt,
    @JsonKey(name: 'appmnt_time') String? appmntTime,
  }) = _RescheduleAppointmentParams;
}
