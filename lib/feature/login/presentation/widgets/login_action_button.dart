import 'package:flutter/material.dart';

class LoginActionButton extends StatelessWidget {
  const LoginActionButton({
    required this.icon,
    required this.onPressed,
    this.isLoading = false,
    this.tooltip,
    super.key,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final bool isLoading;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final button = SizedBox.square(
      dimension: 52,
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
          disabledBackgroundColor: theme.colorScheme.primary.withValues(
            alpha: .38,
          ),
          disabledForegroundColor: theme.colorScheme.onPrimary.withValues(
            alpha: .72,
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2.4,
                  color: theme.colorScheme.onPrimary,
                ),
              )
            : Icon(icon, size: 21),
      ),
    );

    if (tooltip == null) return button;

    return Tooltip(message: tooltip!, child: button);
  }
}
