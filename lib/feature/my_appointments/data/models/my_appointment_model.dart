import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

part 'generated/my_appointment_model.freezed.dart';
part 'generated/my_appointment_model.g.dart';

@freezed
sealed class MyAppointmentModel with _$MyAppointmentModel {
  const MyAppointmentModel._();

  const factory MyAppointmentModel({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'customer_name') required String memberName,
    required String email,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
    @JsonKey(name: 'dept_name') required String departName,
    @JsonKey(name: 'employee_id') required String doctorId,
    @JsonKey(name: 'employee_name') required String doctorName,
    required String speciality,
    required String branch,
    @JsonKey(name: 'profileurl') required String profileUrl,
    @JsonKey(name: 'busunit_name') required String busunitName,
    @JsonKey(name: 'Appmnt_Dttm') required DateTime appointmentDateTime,
    @JsonKey(name: 'id_employee') required int idDoctor,
    @Default(false) bool isCanceling,
  }) = _MyAppointmentModel;

  factory MyAppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentModelFromJson(json);

  MyAppointment toEntity() => MyAppointment(
    id: id,
    memberId: memberId,
    memberName: memberName,
    email: email,
    mobileNumber: mobileNumber,
    departName: departName,
    doctorId: doctorId,
    doctorName: doctorName,
    speciality: speciality,
    branch: branch,
    profileUrl: profileUrl,
    busunitName: busunitName,
    appointmentDateTime: appointmentDateTime,
    idDoctor: idDoctor,
    isCanceling: isCanceling,
  );
}
