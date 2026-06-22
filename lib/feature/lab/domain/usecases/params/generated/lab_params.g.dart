// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../lab_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetItemsParams _$GetItemsParamsFromJson(Map<String, dynamic> json) =>
    _GetItemsParams(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetItemsParamsToJson(_GetItemsParams instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_UpdateItemInCartParams _$UpdateItemInCartParamsFromJson(
  Map<String, dynamic> json,
) => _UpdateItemInCartParams(
  idItem: (json['id_item'] as num).toInt(),
  idUser: (json['id_user'] as num).toInt(),
  token: json['token'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$UpdateItemInCartParamsToJson(
  _UpdateItemInCartParams instance,
) => <String, dynamic>{
  'id_item': instance.idItem,
  'id_user': instance.idUser,
  'runtimeType': instance.$type,
};

_GetItemDetailParams _$GetItemDetailParamsFromJson(Map<String, dynamic> json) =>
    _GetItemDetailParams(
      idItem: (json['id_item'] as num).toInt(),
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetItemDetailParamsToJson(
  _GetItemDetailParams instance,
) => <String, dynamic>{
  'id_item': instance.idItem,
  'runtimeType': instance.$type,
};

_GetPackagesParams _$GetPackagesParamsFromJson(Map<String, dynamic> json) =>
    _GetPackagesParams(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetPackagesParamsToJson(_GetPackagesParams instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
