import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ImagePickerTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onPressed;
  const ImagePickerTile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
            width: 1.5,
          ),
          color: theme.colorScheme.surface,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                iconPath,
                height: 32,
                width: 32,
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.onPrimaryContainer,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const Gap(16),
            Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
