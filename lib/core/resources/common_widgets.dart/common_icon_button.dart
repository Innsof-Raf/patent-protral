import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final String? tooltip;
  final Color? backgroundColor;
  final Color? color;
  final double borderRadius;
  final double iconSize;

  const CommonIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.tooltip,
    this.backgroundColor,
    this.color,
    this.borderRadius = 12,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      tooltip: tooltip,
      color: color ?? theme.colorScheme.onSurface,
      iconSize: iconSize,
      style: IconButton.styleFrom(
        backgroundColor:
            backgroundColor ??
            theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
