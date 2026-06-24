import 'package:flutter/material.dart';

class ActiveOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double? width;
  final double height;
  final double borderRadius;
  final Color? borderColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;

  const ActiveOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 54,
    this.borderRadius = 16,
    this.borderColor,
    this.foregroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBorderColor = borderColor ?? theme.colorScheme.primary;
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.primary;

    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: effectiveForegroundColor,
          side: BorderSide(color: effectiveBorderColor, width: 1.5),
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
