import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityTile extends StatelessWidget {
  const SpecialityTile({super.key, required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Semantics(
      button: true,
      label: '${AppStaticTexts.viewDoctorsIn} ${speciality.specialityName}',
      child: InkWell(
        onTap: () => context.router.root.push(
          DoctorsRoute(idSpecilaity: speciality.idSpeciality),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.surface,
                  border: Border.all(
                    color: theme.colorScheme.primary.withValues(alpha: .1),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withValues(alpha: .05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(child: _SpecialityImage(speciality: speciality)),
              ),
              const Gap(16),
              Expanded(
                child: Text(
                  speciality.specialityName,
                  style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.9),
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SpecialityImage extends StatelessWidget {
  const _SpecialityImage({required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = speciality.specialityImage;
    final icon = Icon(
      Icons.local_hospital_outlined,
      size: 24,
      color: theme.colorScheme.primary,
    );

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(shape: BoxShape.circle),
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
        errorWidget: (context, url, error) => CommonNetworkImage.errorWidget(
          context,
          url,
          error,
          customErrorWidget: icon,
        ),
      ),
    );
  }
}
