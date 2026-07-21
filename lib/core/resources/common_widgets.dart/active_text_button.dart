import 'package:flutter/material.dart';

class ActiveTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? foregroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;

  const ActiveTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.foregroundColor,
    this.fontSize,
    this.fontWeight,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.primary;

    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: effectiveForegroundColor,
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      onPressed: onPressed,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: DefaultTextStyle.merge(
          softWrap: false,
          style:
              style?.copyWith(color: effectiveForegroundColor) ??
              TextStyle(
                fontSize: fontSize ?? 14,
                fontWeight: fontWeight ?? FontWeight.w500,
                color: effectiveForegroundColor,
              ),
          child: child,
        ),
      ),
    );
  }
}
