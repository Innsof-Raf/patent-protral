import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

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
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.colorScheme.outlineVariant, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.onPrimaryContainer,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const Gap(12),
            Text(
              title,
              style: AppTextStyles.bodyTextRoboto.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
