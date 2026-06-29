import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    required this.title,
    required this.subtitle,
    this.onViewAll,
    this.actionTooltip,
    this.inverse = false,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback? onViewAll;
  final String? actionTooltip;
  final bool inverse;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final foregroundColor = inverse
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.onSurface;
    final mutedColor = foregroundColor.withValues(alpha: .68);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                  color: foregroundColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  height: 1.15,
                ),
              ),
              if (subtitle.isNotEmpty) ...[
                const Gap(5),
                Text(
                  subtitle,
                  style: AppTextStyles.bodyTextRoboto.copyWith(
                    color: mutedColor,
                    height: 1.35,
                  ),
                ),
                Gap(5),
              ],
            ],
          ),
        ),
        if (onViewAll != null) ...[
          const Gap(12),
          InkWell(
            onTap: onViewAll,
            child: Text(
              AppStaticTexts.viewAll,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
