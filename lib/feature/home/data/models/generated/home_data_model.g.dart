// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) =>
    _HomeDataModel(
      ads: (json['ad_banner'] as List<dynamic>)
          .map((e) => AdBannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topSpecialities: (json['speciality'] as List<dynamic>)
          .map((e) => SpecialityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topInsurances: (json['insurance'] as List<dynamic>)
          .map((e) => InsuranceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPackages: (json['package_banner'] as List<dynamic>)
          .map((e) => AdBannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationCount: (json['notification_count'] as num).toInt(),
    );

Map<String, dynamic> _$HomeDataModelToJson(_HomeDataModel instance) =>
    <String, dynamic>{
      'ad_banner': instance.ads,
      'speciality': instance.topSpecialities,
      'insurance': instance.topInsurances,
      'package_banner': instance.topPackages,
      'notification_count': instance.notificationCount,
    };
