import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class HomeData {
  final List<AdBanner> ads;
  final List<Speciality> topSpecialities;
  final List<InsuranceModel> topInsurances;
  final List<AdBanner> topPackages;
  final int notificationCount;

  const HomeData({
    required this.ads,
    required this.topSpecialities,
    required this.topInsurances,
    required this.topPackages,
    required this.notificationCount,
  });

  HomeData copyWith({
    List<AdBanner>? ads,
    List<Speciality>? topSpecialities,
    List<InsuranceModel>? topInsurances,
    List<AdBanner>? topPackages,
    int? notificationCount,
  }) {
    return HomeData(
      ads: ads ?? this.ads,
      topSpecialities: topSpecialities ?? this.topSpecialities,
      topInsurances: topInsurances ?? this.topInsurances,
      topPackages: topPackages ?? this.topPackages,
      notificationCount: notificationCount ?? this.notificationCount,
    );
  }
}
