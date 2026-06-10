import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

class MyAppointmentModel {
  final int id;
  final int memberId;
  final String memberName;
  final String email;
  final String mobileNumber;
  final String departName;
  final String doctorId;
  final String doctorName;
  final String speciality;
  final String branch;
  final String profileUrl;
  final String busunitName;
  final DateTime appointmentDateTime;
  final int idDoctor;
  final bool isCanceling;

  const MyAppointmentModel({
    required this.id,
    required this.memberId,
    required this.memberName,
    required this.email,
    required this.mobileNumber,
    required this.departName,
    required this.doctorId,
    required this.doctorName,
    required this.speciality,
    required this.branch,
    required this.profileUrl,
    required this.busunitName,
    required this.appointmentDateTime,
    required this.idDoctor,
    this.isCanceling = false,
  });

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

  MyAppointment toEntity() {
    return MyAppointment(
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
}
