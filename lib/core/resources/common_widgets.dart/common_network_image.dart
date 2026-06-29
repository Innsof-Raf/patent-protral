import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class CommonNetworkImage {
  static Widget placeholder(
    BuildContext context,
    String url, {
    String? placeholderImage,
  }) {
    final theme = Theme.of(context);

    return Container(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
      padding: const EdgeInsets.all(16),
      child: _getImageWidget(
        placeholderImage ?? Assets.images.doctorImageLoadingFailedImage.path,
        color: theme.colorScheme.primary,
      ),
    );
  }

  static Widget errorWidget(
    BuildContext context,
    String url,
    dynamic error, {
    double padding = 16,
    String? fallbackImage,
  }) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
      padding: EdgeInsets.all(padding),
      child: _getImageWidget(
        fallbackImage ?? Assets.images.doctorImageLoadingFailedImage.path,
        color: theme.colorScheme.primary,
      ),
    );
  }

  static Widget _getImageWidget(String path, {Color? color}) {
    if (path.endsWith('.svg')) {
      return SvgPicture.asset(
        path,
        fit: BoxFit.contain,
        colorFilter: color != null
            ? ColorFilter.mode(color, BlendMode.srcIn)
            : ColorFilter.mode(AppColors.primaryCyan, BlendMode.srcIn),
      );
    }
    return Image.asset(
      path,
      fit: BoxFit.contain,
      color: color ?? AppColors.primaryCyan,
    );
  }
}
