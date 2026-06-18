import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityTile extends StatelessWidget {
  const SpecialityTile({super.key, required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(20);

    return Semantics(
      button: true,
      label: 'View doctors in ${speciality.specialityName}',
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withValues(alpha: .08),
              blurRadius: 18,
              offset: const Offset(0, 8),
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
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: .12),
                ),
                color: theme.colorScheme.surface,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -34,
                    right: -34,
                    child: Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer.withValues(
                          alpha: .22,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _SpecialityImage(speciality: speciality),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 19,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        speciality.specialityName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w800,
                          height: 1.15,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'View doctors',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.chevron_right_rounded,
                            size: 18,
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

    return Container(
      width: 48,
      height: 48,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: .32),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: .10),
        ),
      ),
      child:
          speciality.specialityImage == null ||
              speciality.specialityImage!.trim().isEmpty
          ? _FallbackSpecialityIcon(color: theme.colorScheme.primary)
          : CachedNetworkImage(
              imageUrl:
                  '${ConstantUrls.specialityImageUrl}/${speciality.idSpeciality}/${speciality.specialityImage}',
              fadeInDuration: Duration.zero,
              fit: BoxFit.contain,
              errorWidget: (context, url, error) {
                return _FallbackSpecialityIcon(
                  color: theme.colorScheme.primary,
                );
              },
              progressIndicatorBuilder: (context, url, progress) {
                return Center(
                  child: SizedBox(
                    width: 17,
                    height: 17,
                    child: CircularProgressIndicator(
                      value: progress.progress,
                      strokeWidth: 2,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class _FallbackSpecialityIcon extends StatelessWidget {
  const _FallbackSpecialityIcon({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.local_hospital_outlined,
      color: color,
      size: 25,
      semanticLabel: 'Speciality',
    );
  }
}
