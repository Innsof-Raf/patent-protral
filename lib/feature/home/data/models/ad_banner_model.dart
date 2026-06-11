import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';

part 'generated/ad_banner_model.freezed.dart';

@freezed
sealed class AdBannerModel with _$AdBannerModel {
  const AdBannerModel._();

  const factory AdBannerModel({
    required String? imageName,
    required String? url,
    required int idPrimary,
    required String bannerType,
  }) = _AdBannerModel;

  factory AdBannerModel.fromJson(Map<String, dynamic> json) {
    return AdBannerModel(
      imageName: json['Image_nm'] as String?,
      url: json['url'] as String?,
      idPrimary: json['id_primary'] as int,
      bannerType: json['banner_type'] as String,
    );
  }

  AdBanner toEntity() => AdBanner(
        imageName: imageName,
        url: url,
        idPrimary: idPrimary,
        bannerType: bannerType,
      );
}
