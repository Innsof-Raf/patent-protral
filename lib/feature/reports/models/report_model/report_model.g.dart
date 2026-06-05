// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportModel _$$_ReportModelFromJson(Map<String, dynamic> json) =>
    _$_ReportModel(
      idConseltation: json['id_cons'] as int,
      id: json['id'] as int,
      memberId: json['ID_CUSTOMER'] as int,
      doctorName: json['employee_name'] as String,
      departmentName: json['speciality'] as String,
      appointmentDate: DateTime.parse(json['appmnt_dttm'] as String),
      appointmentTime: json['appmnt_time'] as String,
      labPdfUrl: json['labreport_url'] as String? ?? null,
      xRayPdfUrl: json['xrayreport_url'] as String? ?? null,
      ussPdfUrl: json['ussreport_url'] as String? ?? null,
      ctPdfUrl: json['ct_url'] as String? ?? null,
    );

Map<String, dynamic> _$$_ReportModelToJson(_$_ReportModel instance) =>
    <String, dynamic>{
      'id_cons': instance.idConseltation,
      'id': instance.id,
      'ID_CUSTOMER': instance.memberId,
      'employee_name': instance.doctorName,
      'speciality': instance.departmentName,
      'appmnt_dttm': instance.appointmentDate.toIso8601String(),
      'appmnt_time': instance.appointmentTime,
      'labreport_url': instance.labPdfUrl,
      'xrayreport_url': instance.xRayPdfUrl,
      'ussreport_url': instance.ussPdfUrl,
      'ct_url': instance.ctPdfUrl,
    };
