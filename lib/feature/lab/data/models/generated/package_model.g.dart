// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageModel _$PackageModelFromJson(Map<String, dynamic> json) =>
    _PackageModel(
      id: (json['id'] as num).toInt(),
      pkgName: json['pkg_name'] as String,
      pkgPrice: (json['pkg_price'] as num).toDouble(),
      pkgImage: json['pkg_img'] as String,
    );

Map<String, dynamic> _$PackageModelToJson(_PackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pkg_name': instance.pkgName,
      'pkg_price': instance.pkgPrice,
      'pkg_img': instance.pkgImage,
    };
