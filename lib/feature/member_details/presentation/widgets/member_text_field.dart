import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class MemberTextField extends StatelessWidget {
  const MemberTextField({
    super.key,
    required this.title,
    required this.value,
    this.icon,
  });

  final String title;
  final String value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .32),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
        ),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: theme.colorScheme.primary, size: 20),
            const Gap(10),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(4),
                Text(
                  value.isEmpty ? context.lang.notProvided : value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.largeRobotoNormal.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
