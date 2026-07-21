import 'package:flutter/material.dart';

class ArrowForwardButton extends StatelessWidget {
  const ArrowForwardButton({required this.onPressed, this.tooltip, super.key});

  final VoidCallback onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Tooltip(
      message: tooltip ?? 'Open',
      child: IconButton(
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: .72,
          ),
          foregroundColor: theme.colorScheme.onSurface,
          fixedSize: const Size.square(40),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_forward_rounded, size: 19),
      ),
    );
  }
}
