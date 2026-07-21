// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../my_appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyAppointmentModel _$MyAppointmentModelFromJson(Map<String, dynamic> json) =>
    _MyAppointmentModel(
      id: intFromJson(_readId(json, 'id')),
      memberId: intFromJson(_readMemberId(json, 'memberId')),
      memberName: stringFromJson(_readMemberName(json, 'memberName')),
      email: json['email'] == null ? '' : stringFromJson(json['email']),
      mobileNumber: stringFromJson(_readMobileNumber(json, 'mobileNumber')),
      departName: json['dept_name'] as String? ?? '',
      doctorId: _readDoctorId(json, 'doctorId') == null
          ? ''
          : stringFromJson(_readDoctorId(json, 'doctorId')),
      doctorName: json['employee_name'] as String? ?? '',
      speciality: json['speciality'] as String? ?? '',
      branch: json['branch'] as String? ?? '',
      profileUrl: json['profileurl'] as String? ?? '',
      busUnitName: json['busunit_name'] as String? ?? '',
      appointmentDateTime: _dateTimeFromJson(
        _readAppointmentDateTime(json, 'Appmnt_Dttm'),
      ),
      idDoctor: json['id_employee'] == null
          ? 0
          : intFromJson(json['id_employee']),
      status: json['appmnt_status'] as String? ?? '',
      tokenNo: json['token_no'] as String? ?? '',
      stars: json['stars'] == null ? 0 : intFromJson(json['stars']),
      isCanceling: json['isCanceling'] as bool? ?? false,
    );

Map<String, dynamic> _$MyAppointmentModelToJson(_MyAppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'memberName': instance.memberName,
      'email': instance.email,
      'mobileNumber': instance.mobileNumber,
      'dept_name': instance.departName,
      'doctorId': instance.doctorId,
      'employee_name': instance.doctorName,
      'speciality': instance.speciality,
      'branch': instance.branch,
      'profileurl': instance.profileUrl,
      'busunit_name': instance.busUnitName,
      'Appmnt_Dttm': instance.appointmentDateTime.toIso8601String(),
      'id_employee': instance.idDoctor,
      'appmnt_status': instance.status,
      'token_no': instance.tokenNo,
      'stars': instance.stars,
      'isCanceling': instance.isCanceling,
    };
