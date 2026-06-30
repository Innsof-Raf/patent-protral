import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_base_tile.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_image_circle.dart';

class HomeSpecialityCard extends StatelessWidget {
  const HomeSpecialityCard({required this.speciality, super.key});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SpecialityBaseTile(
      speciality: speciality,
      child: Column(
        children: [
          SpecialityImageCircle(
            speciality: speciality,
            outerSize: 72,
            innerSize: 42,
            iconSize: 28,
          ),
          const Gap(8),
          Text(
            speciality.specialityName,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyLargeRobotoBold.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.9),
              fontWeight: FontWeight.bold,
              fontSize: 13,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
