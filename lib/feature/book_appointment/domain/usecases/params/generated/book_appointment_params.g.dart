// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../book_appointment_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetAvailableSlotsParamsToJson(
  _GetAvailableSlotsParams instance,
) => <String, dynamic>{
  'id_doctor': instance.idDoctor,
  'shift_dt': instance.shiftDt,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$BookNewAppointmentParamsToJson(
  _BookNewAppointmentParams instance,
) => <String, dynamic>{
  'id_employee': instance.idDoctor,
  'appmnt_dttm': instance.appointmentDateTime.toIso8601String(),
  'mobile_no': instance.mobileNo,
  'id_customer': instance.idMember,
  'id': instance.id,
  'id_busunit': instance.idBusunit,
  'appmnt_mode': instance.appmntMode,
  'appmnt_dt': instance.appmntDt,
  'appmnt_time': instance.appmntTime,
  'patient_mobileno': instance.patientMobileNo,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$RescheduleAppointmentParamsToJson(
  _RescheduleAppointmentParams instance,
) => <String, dynamic>{
  'appmnt_dttm': instance.appointmentDateTime.toIso8601String(),
  'id': instance.idAppointment,
  'appmnt_dt': instance.appmntDt,
  'appmnt_time': instance.appmntTime,
  'runtimeType': instance.$type,
};
