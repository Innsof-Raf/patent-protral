// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../my_appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyAppointmentModel _$MyAppointmentModelFromJson(Map<String, dynamic> json) =>
    _MyAppointmentModel(
      id: (json['Id'] as num).toInt(),
      memberId: (json['id_customer'] as num).toInt(),
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
      idDoctor: (json['id_employee'] as num).toInt(),
      isCanceling: json['isCanceling'] as bool? ?? false,
    );

Map<String, dynamic> _$MyAppointmentModelToJson(_MyAppointmentModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'id_customer': instance.memberId,
      'customer_name': instance.memberName,
      'email': instance.email,
      'mobile_no': instance.mobileNumber,
      'dept_name': instance.departName,
      'employee_id': instance.doctorId,
      'employee_name': instance.doctorName,
      'speciality': instance.speciality,
      'branch': instance.branch,
      'profileurl': instance.profileUrl,
      'busunit_name': instance.busunitName,
      'Appmnt_Dttm': instance.appointmentDateTime.toIso8601String(),
      'id_employee': instance.idDoctor,
      'isCanceling': instance.isCanceling,
    };
