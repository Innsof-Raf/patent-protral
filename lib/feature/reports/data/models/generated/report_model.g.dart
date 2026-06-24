// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => _ReportModel(
  idConseltation: intFromJson(json['id_cons']),
  id: intFromJson(json['id']),
  memberId: intFromJson(json['ID_CUSTOMER']),
  customerName: stringFromJson(json['Customer_Name']),
  doctorName: stringFromJson(json['employee_name']),
  departmentName: stringFromJson(json['speciality']),
  appointmentDate: DateTime.parse(json['appmnt_dttm'] as String),
  appointmentTime: stringFromJson(json['appmnt_time']),
  labPdfUrl: json['labreport_url'] as String?,
  xRayPdfUrl: json['xrayreport_url'] as String?,
  ussPdfUrl: json['ussreport_url'] as String?,
  ctPdfUrl: json['ct_url'] as String?,
);

Map<String, dynamic> _$ReportModelToJson(_ReportModel instance) =>
    <String, dynamic>{
      'id_cons': instance.idConseltation,
      'id': instance.id,
      'ID_CUSTOMER': instance.memberId,
      'Customer_Name': instance.customerName,
      'employee_name': instance.doctorName,
      'speciality': instance.departmentName,
      'appmnt_dttm': instance.appointmentDate.toIso8601String(),
      'appmnt_time': instance.appointmentTime,
      'labreport_url': instance.labPdfUrl,
      'xrayreport_url': instance.xRayPdfUrl,
      'ussreport_url': instance.ussPdfUrl,
      'ct_url': instance.ctPdfUrl,
    };
