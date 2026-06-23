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
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 1.15,
                ),
              ),
              const Gap(5),
              Text(
                subtitle,
                style: AppTextStyles.bodyTextRoboto.copyWith(
                  color: mutedColor,
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
        if (onViewAll != null) ...[
          const Gap(12),
          Tooltip(
            message: actionTooltip ?? AppStaticTexts.viewAll,
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: inverse
                    ? theme.colorScheme.onPrimary.withValues(alpha: .14)
                    : theme.colorScheme.surfaceContainerHighest.withValues(
                        alpha: .72,
                      ),
                foregroundColor: foregroundColor,
                fixedSize: const Size.square(40),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: onViewAll,
              icon: const Icon(Icons.arrow_forward_rounded, size: 19),
            ),
          ),
        ],
      ],
    );
  }
}
