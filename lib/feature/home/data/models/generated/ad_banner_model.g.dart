// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../ad_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdBannerModel _$AdBannerModelFromJson(Map<String, dynamic> json) =>
    _AdBannerModel(
      imageName: _readImageName(json, 'imageName') as String?,
      url: json['url'] as String?,
      idPrimary: intFromJson(_readIdPrimary(json, 'idPrimary')),
      bannerType: stringFromJson(_readBannerType(json, 'bannerType')),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AdBannerModelToJson(_AdBannerModel instance) =>
    <String, dynamic>{
      'imageName': instance.imageName,
      'url': instance.url,
      'idPrimary': instance.idPrimary,
      'bannerType': instance.bannerType,
      'description': instance.description,
    };
