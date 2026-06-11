import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

part 'generated/home_data.freezed.dart';

@freezed
sealed class HomeData with _$HomeData {
  const factory HomeData({
    required List<AdBanner> ads,
    required List<Speciality> topSpecialities,
    required List<InsuranceModel> topInsurances,
    required List<AdBanner> topPackages,
    required int notificationCount,
  }) = _HomeData;
}
