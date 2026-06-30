import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class AppointmentsOverviewCard extends StatelessWidget {
  final int totalCount;
  final int consultedCount;
  final int upcomingCount;

  const AppointmentsOverviewCard({
    super.key,
    required this.totalCount,
    required this.consultedCount,
    required this.upcomingCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.03),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStaticTexts.manageAppointments,
            style: AppTextStyles.largeBoldRoboto.copyWith(
              color: colorScheme.onSurface,
              fontSize: 18,
            ),
          ),
          const Gap(4),
          Text(
            AppStaticTexts.manageAppointmentsSubtitle,
            style: AppTextStyles.bodyTextInter.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
              fontSize: 13,
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Expanded(
                child: _MetricChip(
                  label: AppStaticTexts.total,
                  value: totalCount,
                  icon: Icons.calendar_today_rounded,
                  color: colorScheme.primary,
                ),
              ),
              const Gap(12),
              Expanded(
                child: _MetricChip(
                  label: AppStaticTexts.done,
                  value: consultedCount,
                  icon: Icons.check_circle_outline_rounded,
                  color: Colors.green,
                ),
              ),
              const Gap(12),
              Expanded(
                child: _MetricChip(
                  label: AppStaticTexts.upcoming,
                  value: upcomingCount,
                  icon: Icons.upcoming_rounded,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  final String label;
  final int value;
  final IconData icon;
  final Color color;

  const _MetricChip({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.1)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 14, color: color),
          ),
          const Gap(8),
          Text(
            '$value',
            style: AppTextStyles.largeBoldRoboto.copyWith(
              color: colorScheme.onSurface,
              fontSize: 20,
            ),
          ),
          const Gap(2),
          Text(
            label,
            style: AppTextStyles.bodyTextInter.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontWeight: FontWeight.w600,
              fontSize: 11,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
