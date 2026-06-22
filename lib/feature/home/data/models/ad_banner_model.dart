import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';

part 'generated/ad_banner_model.freezed.dart';
part 'generated/ad_banner_model.g.dart';

@freezed
sealed class AdBannerModel with _$AdBannerModel {
  const AdBannerModel._();

  const factory AdBannerModel({
    @JsonKey(readValue: _readImageName) required String? imageName,
    @JsonKey(name: 'url') required String? url,
    @JsonKey(readValue: _readIdPrimary, fromJson: intFromJson)
    required int idPrimary,
    @JsonKey(readValue: _readBannerType, fromJson: stringFromJson)
    required String bannerType,
    @JsonKey(name: 'description') String? description,
  }) = _AdBannerModel;

  factory AdBannerModel.fromJson(Map<String, dynamic> json) =>
      _$AdBannerModelFromJson(json);

  AdBanner toEntity() => AdBanner(
    imageName: imageName,
    url: url,
    idPrimary: idPrimary,
    bannerType: bannerType,
    description: description,
  );
}

Object? _readImageName(Map json, String key) =>
    json['Image_nm'] ??
    json['image_nm'] ??
    json['imageName'] ??
    json['image_name'];
Object? _readIdPrimary(Map json, String key) =>
    json['id_primary'] ?? json['id'];
Object? _readBannerType(Map json, String key) =>
    json['banner_type'] ?? json['content_type'];
