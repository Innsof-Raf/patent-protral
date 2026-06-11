import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

part 'generated/my_appointment_model.freezed.dart';

@freezed
sealed class MyAppointmentModel with _$MyAppointmentModel {
  const MyAppointmentModel._();

  const factory MyAppointmentModel({
    required int id,
    required int memberId,
    required String memberName,
    required String email,
    required String mobileNumber,
    required String departName,
    required String doctorId,
    required String doctorName,
    required String speciality,
    required String branch,
    required String profileUrl,
    required String busunitName,
    required DateTime appointmentDateTime,
    required int idDoctor,
    @Default(false) bool isCanceling,
  }) = _MyAppointmentModel;

  factory MyAppointmentModel.fromJson(Map<String, dynamic> json) {
    return MyAppointmentModel(
      id: json['Id'] as int,
      memberId: json['id_customer'] as int,
      memberName: json['customer_name'] as String,
      email: json['email'] as String,
      mobileNumber: json['mobile_no'] as String,
      departName: json['dept_name'] as String,
      doctorId: json['employee_id'] as String,
      doctorName: json['employee_name'] as String,
      speciality: json['speciality'] as String,
      branch: json['branch'] as String,
      profileUrl: json['profileurl'] as String,
      busunitName: json['busunit_name'] as String,
      appointmentDateTime: DateTime.parse(json['Appmnt_Dttm'] as String),
      idDoctor: json['id_employee'] as int,
    );
  }

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
