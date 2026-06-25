import 'package:flutter/material.dart';

class ActiveOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Widget? icon;
  final double? width;
  final double height;
  final double borderRadius;
  final Color? borderColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  const ActiveOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.icon,
    this.width,
    this.height = 56,
    this.borderRadius = 16,
    this.borderColor,
    this.foregroundColor,
    this.padding,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBorderColor = borderColor ?? theme.colorScheme.primary;
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.primary;

    final style = OutlinedButton.styleFrom(
      foregroundColor: effectiveForegroundColor,
      side: BorderSide(color: effectiveBorderColor, width: 1.5),
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
          ? OutlinedButton.icon(
              style: style,
              onPressed: onPressed,
              icon: icon!,
              label: content,
            )
          : OutlinedButton(
              style: style,
              onPressed: isLoading ? null : onPressed,
              child: content,
            ),
    );
  }
}
