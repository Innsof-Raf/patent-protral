// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../documents_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetDocumentsParams _$GetDocumentsParamsFromJson(Map<String, dynamic> json) =>
    _GetDocumentsParams(
      memberId: (json['id_customer'] as num).toInt(),
      mobileNumber: json['mobile_number'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$GetDocumentsParamsToJson(_GetDocumentsParams instance) =>
    <String, dynamic>{
      'id_customer': instance.memberId,
      'mobile_number': instance.mobileNumber,
    };
