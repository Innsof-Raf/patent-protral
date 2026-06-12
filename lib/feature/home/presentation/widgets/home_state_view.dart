import 'package:flutter/material.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class HomeLoadingView extends StatelessWidget {
  const HomeLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withValues(alpha: .08),
              blurRadius: 22,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Image.asset(Assets.gifImages.ripple02.path, width: 96),
        ),
      ),
    );
  }
}

class HomeErrorView extends StatelessWidget {
  const HomeErrorView({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer.withValues(alpha: .38),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: theme.colorScheme.error.withValues(alpha: .16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onErrorContainer,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
