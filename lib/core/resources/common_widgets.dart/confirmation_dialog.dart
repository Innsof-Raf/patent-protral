import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_text_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String message;
  final String? confirmText;
  final String? cancelText;
  final VoidCallback onConfirm;
  final String? iconPath;
  final Color? confirmButtonColor;
  final bool isDestructive;

  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
    this.confirmText,
    this.cancelText,
    this.iconPath,
    this.confirmButtonColor,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0,
      backgroundColor: AppColors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (iconPath != null) ...[
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:
                            (isDestructive
                                    ? theme.colorScheme.error
                                    : theme.colorScheme.primary)
                                .withValues(alpha: 0.2),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        iconPath!,
                        height: 40,
                        width: 40,
                        colorFilter: ColorFilter.mode(
                          isDestructive
                              ? theme.colorScheme.error
                              : theme.colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const Gap(24),
                  ],
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Gap(12),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(32),
                  Row(
                    children: [
                      Expanded(
                        child: ActiveTextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(cancelText ?? AppStaticTexts.cancel),
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: ActiveButton(
                          onPressed: onConfirm,
                          height: 50,
                          backgroundColor:
                              confirmButtonColor ??
                              (isDestructive
                                  ? theme.colorScheme.error
                                  : theme.colorScheme.primary),
                          foregroundColor: isDestructive
                              ? theme.colorScheme.onError
                              : theme.colorScheme.onPrimary,
                          child: Text(
                            confirmText ?? AppStaticTexts.confirm,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
                color: theme.colorScheme.onSurfaceVariant,
                visualDensity: VisualDensity.compact,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
