import 'package:flutter/material.dart';

class CommonBottomActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final bool isPrimary;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double verticalPadding;

  const CommonBottomActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.isPrimary = true,
    this.backgroundColor,
    this.foregroundColor,
    this.verticalPadding = 25,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final effectiveBackgroundColor =
        backgroundColor ??
        (isPrimary ? theme.colorScheme.primary : theme.colorScheme.surface);
    final effectiveForegroundColor =
        foregroundColor ??
        (isPrimary ? theme.colorScheme.onPrimary : theme.colorScheme.primary);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        minimumSize: const Size(0, 0),
        foregroundColor: effectiveForegroundColor,
        backgroundColor: effectiveBackgroundColor,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          color: effectiveForegroundColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
