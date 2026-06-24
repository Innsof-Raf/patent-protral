import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double? width;
  final double height;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;

  const ActiveButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 54,
    this.borderRadius = 16,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBackgroundColor =
        backgroundColor ?? theme.colorScheme.primary;
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onPrimary;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: effectiveBackgroundColor,
          foregroundColor: effectiveForegroundColor,
          disabledBackgroundColor: theme.colorScheme.onSurface.withValues(
            alpha: 0.12,
          ),
          disabledForegroundColor: theme.colorScheme.onSurface.withValues(
            alpha: 0.38,
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        onPressed: onPressed,
        child: DefaultTextStyle.merge(
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          child: child,
        ),
      ),
    );
  }
}
