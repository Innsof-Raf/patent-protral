import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;
import 'package:patient_portal/core/resources/urls.dart';

class AdBanner extends StatelessWidget {
  final home_entity.AdBanner adBanner;
  final VoidCallback onPressed;
  const AdBanner({super.key, required this.adBanner, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: adBanner.imageName != null
            ? CachedNetworkImage(
                imageUrl: adBanner.bannerType == 'AD'
                    ? '${ConstantUrls.bannerImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}'
                    : '${ConstantUrls.packageImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}',
                fadeInDuration: const Duration(seconds: 0),
                fadeOutDuration: const Duration(seconds: 0),
                progressIndicatorBuilder: (context, url, progress) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/image_loading_failed_image.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                fit: BoxFit.fill,
                width: double.infinity,
              )
            : Image.asset(
                'assets/images/image_loading_failed_image.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
      ),
    );
  }
}
