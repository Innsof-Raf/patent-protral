// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdBannerModel _$$_AdBannerModelFromJson(Map<String, dynamic> json) =>
    _$_AdBannerModel(
      imageName: json['Image_nm'] as String?,
      url: json['url'] as String?,
      idPrimary: json['id_primary'] as int,
      bannerType: json['banner_type'] as String,
    );

Map<String, dynamic> _$$_AdBannerModelToJson(_$_AdBannerModel instance) =>
    <String, dynamic>{
      'Image_nm': instance.imageName,
      'url': instance.url,
      'id_primary': instance.idPrimary,
      'banner_type': instance.bannerType,
    };
