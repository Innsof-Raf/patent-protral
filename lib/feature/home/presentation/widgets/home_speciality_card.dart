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

class HomeSpecialityCard extends StatelessWidget {
  const HomeSpecialityCard({required this.speciality, super.key});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(18);

    return Semantics(
      button: true,
      label: '${AppStaticTexts.viewDoctorsIn} ${speciality.specialityName}',
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withValues(alpha: .07),
              blurRadius: 14,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Material(
          color: theme.colorScheme.surface,
          borderRadius: borderRadius,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              context.router.root.push(
                DoctorsRoute(idSpecilaity: speciality.idSpeciality),
              );
            },
            child: Ink(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 9),
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: .12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.colorScheme.primaryContainer.withValues(alpha: .24),
                    theme.colorScheme.surface,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.north_east_rounded,
                      size: 15,
                      color: theme.colorScheme.primary.withValues(alpha: .75),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: _HomeSpecialityImage(speciality: speciality),
                    ),
                  ),
                  const Gap(8),
                  Text(
                    speciality.specialityName,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.largeRobotoNormal.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w800,
                      height: 1.15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeSpecialityImage extends StatelessWidget {
  const _HomeSpecialityImage({required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = speciality.specialityImage;

    return Container(
      width: 48,
      height: 48,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: .88),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: .10),
        ),
      ),
      child: image == null || image.trim().isEmpty
          ? Icon(
              Icons.local_hospital_outlined,
              size: 25,
              color: theme.colorScheme.primary,
            )
          : CachedNetworkImage(
              imageUrl:
                  '${ConstantUrls.specialityImageUrl}/${speciality.idSpeciality}/$image',
              fadeInDuration: Duration.zero,
              fit: BoxFit.contain,
              placeholder: CommonNetworkImage.placeholder,
              errorWidget: CommonNetworkImage.errorWidget,
            ),
    );
  }
}
