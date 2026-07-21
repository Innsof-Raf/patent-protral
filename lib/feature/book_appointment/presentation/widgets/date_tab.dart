import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';

class DateTab extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  const DateTab({super.key, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? colorScheme.primary : colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected
              ? colorScheme.primary
              : colorScheme.onSurface.withValues(alpha: 0.8),
          width: isSelected ? 2 : 1.2,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: 0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ]
            : const [
                BoxShadow(
                  color: AppColors.shadowColorLight,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.E(
                context.currentLang,
              ).format(date).localize(context.currentLang).toUpperCase(),
              style: AppTextStyles.bodyTextRoboto.copyWith(
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            const Gap(6),
            Text(
              DateFormat.d(
                context.currentLang,
              ).format(date).localize(context.currentLang),
              style: AppTextStyles.extraLargeRobotoBold.copyWith(
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurface,
                fontWeight: FontWeight.w900,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
