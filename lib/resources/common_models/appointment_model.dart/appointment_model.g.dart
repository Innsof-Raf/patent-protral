// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentModel _$$_AppointmentModelFromJson(Map<String, dynamic> json) =>
    _$_AppointmentModel(
      id: json['Id'] as int,
      appointmentId: json['appmt_id'] as String,
      branch: json['branch'] as String,
      idMember: json['id_customer'] as int,
      memberName: json['customer_name'] as String,
      idDoctor: json['id_employee'] as int,
      doctorName: json['employee_name'] as String,
      doctorSpecility: json['speciality'] as String,
      doctorImage: json['profileurl'] as String,
      appointmentDateTime: DateTime.parse(json['Appmnt_Dttm'] as String),
      memberImage: json['customer_img'] as String? ?? null,
      busunitName: json['busunit_name'] as String,
      deptName: json['dept_name'] as String,
      email: json['email'] as String,
      doctorId: json['employee_id'] as String,
      mobileNo: json['mobile_no'] as String,
      idBusunit: json['id_busunit'] as int,
      idDept: json['id_dept'] as int,
    );

Map<String, dynamic> _$$_AppointmentModelToJson(_$_AppointmentModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'appmt_id': instance.appointmentId,
      'branch': instance.branch,
      'id_customer': instance.idMember,
      'customer_name': instance.memberName,
      'id_employee': instance.idDoctor,
      'employee_name': instance.doctorName,
      'speciality': instance.doctorSpecility,
      'profileurl': instance.doctorImage,
      'Appmnt_Dttm': instance.appointmentDateTime.toIso8601String(),
      'customer_img': instance.memberImage,
      'busunit_name': instance.busunitName,
      'dept_name': instance.deptName,
      'email': instance.email,
      'employee_id': instance.doctorId,
      'mobile_no': instance.mobileNo,
      'id_busunit': instance.idBusunit,
      'id_dept': instance.idDept,
    };
