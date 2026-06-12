import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;
import 'package:patient_portal/gen/assets.gen.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({required this.adBanner, required this.onPressed, super.key});

  final home_entity.AdBanner adBanner;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withValues(
              alpha: .36,
            ),
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withValues(alpha: .07),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: adBanner.imageName != null
                ? CachedNetworkImage(
                    imageUrl: adBanner.bannerType == 'AD'
                        ? '${ConstantUrls.bannerImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}'
                        : '${ConstantUrls.packageImageUrl}/${adBanner.idPrimary}/${adBanner.imageName}',
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                    progressIndicatorBuilder: (context, url, progress) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Image.asset(
                      Assets.images.imageLoadingFailedImage.path,
                      width: double.infinity,
                      fit: BoxFit.contain,
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
