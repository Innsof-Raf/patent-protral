import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';

part 'generated/ad_banner_model.freezed.dart';
part 'generated/ad_banner_model.g.dart';

@freezed
sealed class AdBannerModel with _$AdBannerModel {
  const AdBannerModel._();

  const factory AdBannerModel({
    @JsonKey(name: 'Image_nm') required String? imageName,
    @JsonKey(name: 'url') required String? url,
    @JsonKey(name: 'id_primary') required int idPrimary,
    @JsonKey(name: 'banner_type') required String bannerType,
  }) = _AdBannerModel;

  factory AdBannerModel.fromJson(Map<String, dynamic> json) =>
      _$AdBannerModelFromJson(json);

  AdBanner toEntity() => AdBanner(
    imageName: imageName,
    url: url,
    idPrimary: idPrimary,
    bannerType: bannerType,
  );
}
