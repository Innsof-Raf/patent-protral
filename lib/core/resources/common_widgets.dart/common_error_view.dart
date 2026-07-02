import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

class CommonErrorView extends StatelessWidget {
  const CommonErrorView({
    required this.message,
    this.title,
    this.icon = Icons.cloud_off_outlined,
    this.onRetry,
    this.retryLabel,
    this.padding = const EdgeInsets.all(24),
    super.key,
  });

  final String? title;
  final String message;
  final IconData icon;
  final VoidCallback? onRetry;
  final String? retryLabel;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: SingleChildScrollView(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer.withValues(alpha: 0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: colorScheme.error, size: 64),
            ),
            const Gap(32),
            Text(
              title ?? context.lang.somethingWentWrong,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            const Gap(12),
            Text(
              ConstantMessages.translate(context, message),
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
            if (onRetry != null) ...[
              const Gap(40),
              ActiveButton(
                width: 200,
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded),
                child: Text(retryLabel ?? context.lang.tryAgain),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
