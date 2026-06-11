import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/data/models/ad_banner_model.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';

part 'generated/home_data_model.freezed.dart';
part 'generated/home_data_model.g.dart';

@freezed
sealed class HomeDataModel with _$HomeDataModel {
  const HomeDataModel._();

  const factory HomeDataModel({
    @JsonKey(name: 'ad_banner') required List<AdBannerModel> ads,
    @JsonKey(name: 'speciality') required List<SpecialityModel> topSpecialities,
    @JsonKey(name: 'insurance') required List<InsuranceModel> topInsurances,
    @JsonKey(name: 'package_banner') required List<AdBannerModel> topPackages,
    @JsonKey(name: 'notification_count') required int notificationCount,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  HomeData toEntity() => HomeData(
    ads: ads.map((item) => item.toEntity()).toList(),
    topSpecialities: topSpecialities.map((item) => item.toEntity()).toList(),
    topInsurances: topInsurances,
    topPackages: topPackages.map((item) => item.toEntity()).toList(),
    notificationCount: notificationCount,
  );
}
