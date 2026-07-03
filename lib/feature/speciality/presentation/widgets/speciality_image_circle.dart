import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityImageCircle extends StatelessWidget {
  const SpecialityImageCircle({
    super.key,
    required this.speciality,
    this.outerSize = 52,
    this.innerSize = 32,
    this.iconSize = 24,
  });

  final Speciality speciality;
  final double outerSize;
  final double innerSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = speciality.specialityImage;
    final icon = Icon(
      Icons.local_hospital_outlined,
      size: iconSize,
      color: theme.colorScheme.primary,
    );

    return Container(
      width: outerSize,
      height: outerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white,
        border: Border.all(
          color: AppColors.primaryCyan.withValues(alpha: 0.12),
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColorLight,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: innerSize,
          height: innerSize,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: CachedNetworkImage(
            imageUrl:
                '${ConstantUrls.specialityImageUrl}/${speciality.idSpeciality}/$image',
            fadeInDuration: Duration.zero,
            fit: BoxFit.contain,
            placeholder: (context, url) => CommonNetworkImage.placeholder(
              context,
              url,
              customPlaceholder: icon,
            ),
            errorWidget: (context, url, error) =>
                CommonNetworkImage.errorWidget(
                  context,
                  url,
                  error,
                  customErrorWidget: icon,
                ),
          ),
        ),
      ),
    );
  }
}
