import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/speciality/model/speciality_model.dart';

import '../../../../resources/common_models/insurance/insurance_model.dart';
import '../ad_banner_model/ad_banner_model.dart';

part 'generated/home_data_model.freezed.dart';
part 'generated/home_data_model.g.dart';

@freezed
sealed class HomeDataModel with _$HomeDataModel {
  const factory HomeDataModel({
    @JsonKey(name: 'ad_banner') required List<AdBannerModel> ads,
    @JsonKey(name: 'speciality') required List<SpecialityModel> topSpecialities,
    @JsonKey(name: 'insurance') required List<InsuranceModel> topInsurances,
    @JsonKey(name: 'package_banner') required List<AdBannerModel> topPackages,
    @JsonKey(name: 'notification_count') required int notificationCount,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}
