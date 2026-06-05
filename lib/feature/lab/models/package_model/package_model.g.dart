// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageModel _$$_PackageModelFromJson(Map<String, dynamic> json) =>
    _$_PackageModel(
      id: json['id'] as int,
      pkgName: json['pkg_name'] as String,
      pkgPrice: (json['pkg_price'] as num).toDouble(),
      pkgImage: json['pkg_img'] as String,
    );

Map<String, dynamic> _$$_PackageModelToJson(_$_PackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pkg_name': instance.pkgName,
      'pkg_price': instance.pkgPrice,
      'pkg_img': instance.pkgImage,
    };
