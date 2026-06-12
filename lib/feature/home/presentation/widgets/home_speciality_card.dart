import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class HomeSpecialityCard extends StatelessWidget {
  const HomeSpecialityCard({required this.speciality, super.key});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          context.router.root.push(
            DoctorsRoute(idSpecilaity: speciality.idSpeciality),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: theme.colorScheme.outlineVariant),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withValues(alpha: .04),
                blurRadius: 12,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl:
                      '${ConstantUrls.specialityImageUrl}/${speciality.idSpeciality}/${speciality.specialityImage}',
                  fadeInDuration: Duration.zero,
                  fit: BoxFit.contain,
                  errorWidget: (context, url, error) => Image.asset(
                    Assets.images.imageLoadingFailedImage.path,
                    fit: BoxFit.contain,
                  ),
                  progressIndicatorBuilder: (context, url, progress) {
                    return const SizedBox.shrink();
                  },
                ),
              ),
              const SizedBox(height: 8),
              Text(
                speciality.specialityName,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w700,
                  height: 1.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
