// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../reports_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReportsParams _$GetReportsParamsFromJson(Map<String, dynamic> json) =>
    GetReportsParams(
      memberId: (json['id_customer'] as num).toInt(),
      token: json['token'] as String,
      mobileNumber: json['mobile_no'] as String,
      status: json['status'] as String? ?? 'ALL',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetReportsParamsToJson(GetReportsParams instance) =>
    <String, dynamic>{
      'id_customer': instance.memberId,
      'mobile_no': instance.mobileNumber,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

GetPrescriptionsParams _$GetPrescriptionsParamsFromJson(
  Map<String, dynamic> json,
) => GetPrescriptionsParams(
  memberId: (json['id_customer'] as num).toInt(),
  token: json['token'] as String? ?? '',
  mobileNumber: json['mobile_no'] as String? ?? '',
  status: json['status'] as String? ?? 'ALL',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GetPrescriptionsParamsToJson(
  GetPrescriptionsParams instance,
) => <String, dynamic>{
  'id_customer': instance.memberId,
  'mobile_no': instance.mobileNumber,
  'status': instance.status,
  'runtimeType': instance.$type,
};

DownloadReportParams _$DownloadReportParamsFromJson(
  Map<String, dynamic> json,
) => DownloadReportParams(
  url: json['url'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DownloadReportParamsToJson(
  DownloadReportParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};
