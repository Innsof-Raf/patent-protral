// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataModel _$$_HomeDataModelFromJson(Map<String, dynamic> json) =>
    _$_HomeDataModel(
      ads: (json['ad_banner'] as List<dynamic>)
          .map((e) => AdBannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topSpecialities: (json['speciality'] as List<dynamic>)
          .map((e) => SpecialityModel.fromJson(e))
          .toList(),
      topInsurances: (json['insurance'] as List<dynamic>)
          .map((e) => InsuranceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPackages: (json['package_banner'] as List<dynamic>)
          .map((e) => AdBannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationCount: json['notification_count'] as int,
    );

Map<String, dynamic> _$$_HomeDataModelToJson(_$_HomeDataModel instance) =>
    <String, dynamic>{
      'ad_banner': instance.ads,
      'speciality': instance.topSpecialities,
      'insurance': instance.topInsurances,
      'package_banner': instance.topPackages,
      'notification_count': instance.notificationCount,
    };
