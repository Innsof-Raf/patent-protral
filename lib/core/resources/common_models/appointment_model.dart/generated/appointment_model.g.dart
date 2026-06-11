// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: intFromJson(_readId(json, 'id')),
      appointmentId: json['appmt_id'] as String? ?? '',
      branch: json['branch'] as String? ?? '',
      idMember: intFromJson(_readIdMember(json, 'idMember')),
      memberName: stringFromJson(_readMemberName(json, 'memberName')),
      idDoctor: intFromJson(_readIdDoctor(json, 'idDoctor')),
      doctorName: stringFromJson(_readDoctorName(json, 'doctorName')),
      doctorSpecility: json['speciality'] as String? ?? '',
      doctorImage: stringFromJson(_readDoctorImage(json, 'doctorImage')),
      appointmentDateTime: DateTime.parse(json['Appmnt_Dttm'] as String),
      memberImage: json['customer_img'] as String? ?? null,
      busunitName: stringFromJson(_readBusunitName(json, 'busunitName')),
      deptName: json['dept_name'] as String? ?? '',
      email: stringFromJson(_readEmail(json, 'email')),
      doctorId: json['employee_id'] == null
          ? ''
          : stringFromJson(json['employee_id']),
      mobileNo: stringFromJson(_readMobileNo(json, 'mobileNo')),
      idBusunit: intFromJson(_readIdBusunit(json, 'idBusunit')),
      idDept: json['id_dept'] == null ? 0 : intFromJson(json['id_dept']),
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appmt_id': instance.appointmentId,
      'branch': instance.branch,
      'idMember': instance.idMember,
      'memberName': instance.memberName,
      'idDoctor': instance.idDoctor,
      'doctorName': instance.doctorName,
      'speciality': instance.doctorSpecility,
      'doctorImage': instance.doctorImage,
      'Appmnt_Dttm': instance.appointmentDateTime.toIso8601String(),
      'customer_img': instance.memberImage,
      'busunitName': instance.busunitName,
      'dept_name': instance.deptName,
      'email': instance.email,
      'employee_id': instance.doctorId,
      'mobileNo': instance.mobileNo,
      'idBusunit': instance.idBusunit,
      'id_dept': instance.idDept,
    };
