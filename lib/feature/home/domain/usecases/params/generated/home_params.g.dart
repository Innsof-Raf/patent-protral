// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetHomeDataParams _$GetHomeDataParamsFromJson(Map<String, dynamic> json) =>
    _GetHomeDataParams(
      token: json['token'] as String,
      idBusunit: (json['id_client'] as num).toInt(),
    );

Map<String, dynamic> _$GetHomeDataParamsToJson(_GetHomeDataParams instance) =>
    <String, dynamic>{'id_client': instance.idBusunit};
