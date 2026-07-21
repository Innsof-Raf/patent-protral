import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class QuickMenuButton extends StatelessWidget {
  const QuickMenuButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onPressed,
    this.subtitle,
  });

  final String title;
  final String imagePath;
  final VoidCallback onPressed;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .36),
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onPressed,
        child: Container(
          width: 158,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 38,
                height: 38,
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: SvgPicture.asset(imagePath),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 3),
                      Text(
                        subtitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.bodyTextRoboto.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
