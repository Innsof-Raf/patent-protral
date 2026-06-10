import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/data/models/ad_banner_model.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';

class HomeDataModel {
  final List<AdBannerModel> ads;
  final List<SpecialityModel> topSpecialities;
  final List<InsuranceModel> topInsurances;
  final List<AdBannerModel> topPackages;
  final int notificationCount;

  const HomeDataModel({
    required this.ads,
    required this.topSpecialities,
    required this.topInsurances,
    required this.topPackages,
    required this.notificationCount,
  });

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

  HomeData toEntity() {
    return HomeData(
      ads: ads.map((item) => item.toEntity()).toList(),
      topSpecialities: topSpecialities.map((item) => item.toEntity()).toList(),
      topInsurances: topInsurances,
      topPackages: topPackages.map((item) => item.toEntity()).toList(),
      notificationCount: notificationCount,
    );
  }
}
