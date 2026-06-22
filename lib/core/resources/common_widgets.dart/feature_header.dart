import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class FeatureHeader extends StatelessWidget {
  const FeatureHeader({
    super.key,
    required this.title,
    required this.subtitle,
    this.badgeText,
  });

  final String title;
  final String subtitle;
  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: .22),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.extraLargeRobotoBold.copyWith(
              color: theme.colorScheme.onSurface,
              fontSize: 16,
            ),
          ),
          const Gap(8),
          Text(
            subtitle,
            style: AppTextStyles.largeRobotoNormal.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          if (badgeText != null) ...[
            const Gap(16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                child: Text(
                  badgeText!,
                  style: AppTextStyles.bodyLargeSemiBoldTextInter.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
