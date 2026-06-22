import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Manage your appointments',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
            ),
          ),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: _MetricChip(
                  label: 'Total',
                  value: totalCount,
                  icon: Icons.calendar_today_rounded,
                  color: colorScheme.primary,
                ),
              ),
              const Gap(8),
              Expanded(
                child: _MetricChip(
                  label: 'Done',
                  value: consultedCount,
                  icon: Icons.check_circle_outline_rounded,
                  color: Colors.green,
                ),
              ),
              const Gap(8),
              Expanded(
                child: _MetricChip(
                  label: 'Next',
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
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: color.withValues(alpha: 0.1)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color),
          const Gap(6),
          Text(
            '$value',
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
