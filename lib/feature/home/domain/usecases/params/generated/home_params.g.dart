// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetHomeDataParams _$GetHomeDataParamsFromJson(Map<String, dynamic> json) =>
    _GetHomeDataParams(
      token: json['token'] as String,
      idBusunit: (json['id_client'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetHomeDataParamsToJson(_GetHomeDataParams instance) =>
    <String, dynamic>{
      'id_client': instance.idBusunit,
      'runtimeType': instance.$type,
    };

_GetTreeDetailParams _$GetTreeDetailParamsFromJson(Map<String, dynamic> json) =>
    _GetTreeDetailParams(
      token: json['token'] as String,
      idTreedetail: (json['id_treedetail'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetTreeDetailParamsToJson(
  _GetTreeDetailParams instance,
) => <String, dynamic>{
  'id_treedetail': instance.idTreedetail,
  'runtimeType': instance.$type,
};

_GetTreeDetailItemParams _$GetTreeDetailItemParamsFromJson(
  Map<String, dynamic> json,
) => _GetTreeDetailItemParams(
  token: json['token'] as String,
  idTreedetail: (json['id_treedetail'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GetTreeDetailItemParamsToJson(
  _GetTreeDetailItemParams instance,
) => <String, dynamic>{
  'id_treedetail': instance.idTreedetail,
  'runtimeType': instance.$type,
};
