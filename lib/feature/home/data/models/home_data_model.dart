import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/data/models/ad_banner_model.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';

part 'generated/home_data_model.freezed.dart';

@freezed
sealed class HomeDataModel with _$HomeDataModel {
  const HomeDataModel._();

  const factory HomeDataModel({
    required List<AdBannerModel> ads,
    required List<SpecialityModel> topSpecialities,
    required List<InsuranceModel> topInsurances,
    required List<AdBannerModel> topPackages,
    required int notificationCount,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(
      ads: (json['ad_banner'] as List)
          .map((item) => AdBannerModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      topSpecialities: (json['speciality'] as List)
          .map((item) => SpecialityModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      topInsurances: (json['insurance'] as List)
          .map((item) => InsuranceModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      topPackages: (json['package_banner'] as List)
          .map((item) => AdBannerModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      notificationCount: json['notification_count'] as int,
    );
  }

  HomeData toEntity() => HomeData(
        ads: ads.map((item) => item.toEntity()).toList(),
        topSpecialities:
            topSpecialities.map((item) => item.toEntity()).toList(),
        topInsurances: topInsurances,
        topPackages: topPackages.map((item) => item.toEntity()).toList(),
        notificationCount: notificationCount,
      );
}
