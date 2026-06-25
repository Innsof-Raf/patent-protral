import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Widget? icon;
  final double? width;
  final double height;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;
  final double? elevation;

  const ActiveButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.icon,
    this.width,
    this.height = 56,
    this.borderRadius = 16,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.isLoading = false,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBackgroundColor =
        backgroundColor ?? theme.colorScheme.primary;
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onPrimary;

    final style = ElevatedButton.styleFrom(
      backgroundColor: effectiveBackgroundColor,
      foregroundColor: effectiveForegroundColor,
      disabledBackgroundColor: isLoading
          ? effectiveBackgroundColor
          : theme.colorScheme.onSurface.withValues(alpha: 0.12),
      disabledForegroundColor: isLoading
          ? effectiveForegroundColor
          : theme.colorScheme.onSurface.withValues(alpha: 0.38),
      elevation: elevation,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );

    Widget content = isLoading
        ? SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: effectiveForegroundColor,
            ),
          )
        : DefaultTextStyle.merge(
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            child: child,
          );

    return SizedBox(
      width: width,
      height: height,
      child: icon != null && !isLoading
          ? ElevatedButton.icon(
              style: style,
              onPressed: onPressed,
              icon: icon!,
              label: content,
            )
          : ElevatedButton(
              style: style,
              onPressed: isLoading ? null : onPressed,
              child: content,
            ),
    );
  }
}
