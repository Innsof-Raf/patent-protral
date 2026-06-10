import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';

class AdBannerModel {
  final String? imageName;
  final String? url;
  final int idPrimary;
  final String bannerType;

  const AdBannerModel({
    required this.imageName,
    required this.url,
    required this.idPrimary,
    required this.bannerType,
  });

  factory AdBannerModel.fromJson(Map<String, dynamic> json) {
    return AdBannerModel(
      imageName: json['Image_nm'] as String?,
      url: json['url'] as String?,
      idPrimary: json['id_primary'] as int,
      bannerType: json['banner_type'] as String,
    );
  }

  AdBanner toEntity() {
    return AdBanner(
      imageName: imageName,
      url: url,
      idPrimary: idPrimary,
      bannerType: bannerType,
    );
  }
}
