import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class CommonErrorView extends StatelessWidget {
  const CommonErrorView({
    required this.message,
    this.title = 'Something went wrong',
    this.icon = Icons.cloud_off_outlined,
    this.onRetry,
    this.retryLabel = 'Try again',
    this.padding = const EdgeInsets.all(24),
    super.key,
  });

  final String title;
  final String message;
  final IconData icon;
  final VoidCallback? onRetry;
  final String retryLabel;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final resolvedPadding = padding.resolve(Directionality.of(context));

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableHeight =
              constraints.hasBoundedHeight &&
                  constraints.maxHeight > resolvedPadding.vertical
              ? constraints.maxHeight - resolvedPadding.vertical
              : 0.0;

          return SingleChildScrollView(
            padding: padding,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: availableHeight),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: colorScheme.outlineVariant.withValues(
                          alpha: .55,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow.withValues(alpha: .06),
                          blurRadius: 24,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 88,
                          height: 88,
                          decoration: BoxDecoration(
                            color: colorScheme.primary.withValues(alpha: .08),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                color: colorScheme.surface,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: colorScheme.primary.withValues(
                                      alpha: .12,
                                    ),
                                    blurRadius: 16,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Icon(
                                icon,
                                color: colorScheme.primary,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                        const Gap(22),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.extraLargeRobotoBold.copyWith(
                            color: colorScheme.onSurface,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                        if (message.isNotEmpty) ...[
                          const Gap(10),
                          Text(
                            message,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.largeRobotoNormal.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              height: 1.5,
                            ),
                          ),
                        ],
                        if (onRetry != null) ...[
                          const Gap(24),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: FilledButton.icon(
                              style: FilledButton.styleFrom(
                                backgroundColor: colorScheme.primary,
                                foregroundColor: colorScheme.onPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: onRetry,
                              icon: const Icon(Icons.refresh_rounded, size: 20),
                              label: Text(
                                retryLabel,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
