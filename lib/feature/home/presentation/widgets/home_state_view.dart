import 'package:flutter/material.dart';

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
