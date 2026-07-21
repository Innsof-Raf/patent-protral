// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../my_appointments_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetMyAppointmentsParamsToJson(
  GetMyAppointmentsParams instance,
) => <String, dynamic>{
  'mobile_no': instance.mobileNumber,
  'status': instance.status,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$StoreBookedAppointmentParamsToJson(
  StoreBookedAppointmentParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};

Map<String, dynamic> _$ChangeRescheduledAppointmentDetailsParamsToJson(
  ChangeRescheduledAppointmentDetailsParams instance,
) => <String, dynamic>{
  'currentSlot': instance.currentSlot.toIso8601String(),
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$CancelAppointmentParamsToJson(
  CancelAppointmentParams instance,
) => <String, dynamic>{
  'id_appmnt': instance.appointmentId,
  'runtimeType': instance.$type,
};
