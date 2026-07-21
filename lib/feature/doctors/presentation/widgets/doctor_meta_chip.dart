import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DoctorMetaChip extends StatelessWidget {
  const DoctorMetaChip({
    required this.icon,
    required this.label,
    this.compact = false,
    super.key,
  });

  final IconData icon;
  final String label;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: compact ? 12 : 14,
          color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.8),
        ),
        const Gap(4),
        Flexible(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
              fontSize: compact ? 10 : 11,
            ),
          ),
        ),
      ],
    );
  }
}
