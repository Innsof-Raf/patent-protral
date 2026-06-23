import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class SpecialityMessageView extends StatelessWidget {
  const SpecialityMessageView({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = theme.colorScheme.primary;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: .12),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.medical_information_outlined, color: iconColor),
            ),
            const Gap(16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Gap(6),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
