import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class RoundedCheckBoxTile extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onChanged;
  final String title;

  const RoundedCheckBoxTile({
    super.key,
    required this.isSelected,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onChanged,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: isSelected
                    ? theme.colorScheme.primary
                    : AppColors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.outline,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check_rounded,
                      size: 16,
                      color: theme.colorScheme.onPrimary,
                    )
                  : null,
            ),
            const Gap(12),
            Text(
              title,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: isSelected
                    ? theme.colorScheme.onSurface
                    : theme.colorScheme.onSurfaceVariant,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
