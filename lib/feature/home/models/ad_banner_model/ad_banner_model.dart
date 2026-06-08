import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_banner_model.freezed.dart';
part 'ad_banner_model.g.dart';

@freezed
sealed class AdBannerModel with _$AdBannerModel {
  const factory AdBannerModel({
    @JsonKey(name: 'Image_nm') required String? imageName,
    @JsonKey(name: 'url') required String? url,
    @JsonKey(name: 'id_primary') required int idPrimary,
    @JsonKey(name: 'banner_type') required String bannerType,
  }) = _AdBannerModel;

  factory AdBannerModel.fromJson(Map<String, dynamic> json) =>
      _$AdBannerModelFromJson(json);
}
