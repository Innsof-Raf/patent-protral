import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/ad_banner.freezed.dart';

@freezed
sealed class AdBanner with _$AdBanner {
  const factory AdBanner({
    required String? imageName,
    required String? url,
    required int idPrimary,
    required String bannerType,
    String? description,
  }) = _AdBanner;
}
