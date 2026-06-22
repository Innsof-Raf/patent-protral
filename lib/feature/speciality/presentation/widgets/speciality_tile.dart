import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityTile extends StatelessWidget {
  const SpecialityTile({super.key, required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(24);

    return Semantics(
      button: true,
      label: '${AppStaticTexts.viewDoctorsIn} ${speciality.specialityName}',
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.primary.withValues(alpha: .06),
              blurRadius: 20,
              offset: const Offset(0, 10),
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
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: .12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.colorScheme.primaryContainer.withValues(alpha: .18),
                    theme.colorScheme.surface,
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -24,
                    right: -24,
                    child: Container(
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withValues(alpha: .04),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _SpecialityImage(speciality: speciality),
                          Icon(
                            Icons.north_east_rounded,
                            size: 18,
                            color: theme.colorScheme.primary.withValues(
                              alpha: .6,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        speciality.specialityName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.5,
                          height: 1.15,
                        ),
                      ),
                      const Gap(8),
                      Row(
                        children: [
                          Text(
                            AppStaticTexts.findDoctors,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Gap(4),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 14,
                            color: theme.colorScheme.primary,
                          ),
                        ],
                      ),
                    ],
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

class _SpecialityImage extends StatelessWidget {
  const _SpecialityImage({required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = speciality.specialityImage;

    return Container(
      width: 52,
      height: 52,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: .08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: .06),
        ),
      ),
      child: image == null || image.trim().isEmpty
          ? Icon(
              Icons.local_hospital_outlined,
              size: 26,
              color: theme.colorScheme.primary,
            )
          : CachedNetworkImage(
              imageUrl:
                  '${ConstantUrls.specialityImageUrl}/${speciality.idSpeciality}/$image',
              fadeInDuration: Duration.zero,
              fit: BoxFit.contain,
              errorWidget: (context, url, error) => Icon(
                Icons.local_hospital_outlined,
                size: 26,
                color: theme.colorScheme.primary,
              ),
              progressIndicatorBuilder: (context, url, progress) => Center(
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    value: progress.progress,
                    strokeWidth: 2,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
    );
  }
}
