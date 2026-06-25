import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class AppHelpers {
  static Widget imageLoadingIndicator(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.violet,
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }
}
