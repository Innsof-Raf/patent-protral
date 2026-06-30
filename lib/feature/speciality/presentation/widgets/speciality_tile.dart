import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_base_tile.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_image_circle.dart';

class SpecialityTile extends StatelessWidget {
  const SpecialityTile({super.key, required this.speciality});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SpecialityBaseTile(
      speciality: speciality,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            SpecialityImageCircle(speciality: speciality),
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
    );
  }
}
