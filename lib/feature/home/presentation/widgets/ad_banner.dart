import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;

class AdBanner extends StatelessWidget {
  const AdBanner({required this.adBanner, required this.onPressed, super.key});

  final home_entity.AdBanner adBanner;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColorLight,
                blurRadius: 18,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: adBanner.imageName != null
                ? CachedNetworkImage(
                    imageUrl:
                        (adBanner.bannerType == 'AD' ||
                            adBanner.bannerType == 'HOMEBANNER')
                        ? '${ConstantUrls.bannerImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}'
                        : '${ConstantUrls.packageImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}',
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                    placeholder: CommonNetworkImage.placeholder,
                    errorWidget: (context, url, error) =>
                        CommonNetworkImage.errorWidget(
                          context,
                          url,
                          error,
                          fallbackImage:
                              Assets.images.imageLoadingFailedImage.path,
                        ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : Image.asset(
                    Assets.images.imageLoadingFailedImage.path,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
          ),
        ),
      ),
    );
  }
}
