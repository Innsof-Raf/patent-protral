import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder_trigger_offset.dart';

class ReminderStatusChip extends StatelessWidget {
  final List<Reminder> activeReminders;
  final VoidCallback onTap;

  const ReminderStatusChip({
    super.key,
    required this.activeReminders,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bool hasReminder = activeReminders.isNotEmpty;

    final String label = hasReminder
        ? _getFormattedLabel(context, activeReminders.first)
        : context.lang.setReminder;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: hasReminder
              ? AppColors.primaryCyan.withValues(alpha: .12)
              : colorScheme.surfaceContainerHighest.withValues(alpha: .5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: hasReminder
                ? AppColors.primaryCyan.withValues(alpha: .4)
                : colorScheme.outlineVariant.withValues(alpha: .6),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              hasReminder
                  ? Icons.notifications_active_rounded
                  : Icons.notifications_none_rounded,
              size: 15,
              color: hasReminder
                  ? AppColors.primaryCyan
                  : colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: AppTextStyles.bodySmallRobotoNormal.copyWith(
                color: hasReminder
                    ? AppColors.primaryCyan
                    : colorScheme.onSurfaceVariant,
                fontWeight: hasReminder ? FontWeight.w600 : FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getFormattedLabel(BuildContext context, Reminder reminder) {
    final offset = ReminderTriggerOffset.fromMinutes(reminder.offsetMinutes);
    if (offset != ReminderTriggerOffset.custom) {
      return offset.getLocalizedLabel(context);
    }
    return '${reminder.offsetMinutes} ${context.lang.minutesShort}';
  }
}
