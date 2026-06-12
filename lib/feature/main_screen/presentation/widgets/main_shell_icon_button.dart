import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainShellIconButton extends StatelessWidget {
  const MainShellIconButton({
    required this.iconPath,
    required this.onPressed,
    this.tooltip,
    this.badgeLabel,
    super.key,
  });

  final String iconPath;
  final VoidCallback onPressed;
  final String? tooltip;
  final String? badgeLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final button = IconButton(
      tooltip: tooltip,
      style: IconButton.styleFrom(
        backgroundColor: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: .55,
        ),
        foregroundColor: theme.colorScheme.onSurface,
        fixedSize: const Size.square(42),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      onPressed: onPressed,
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(iconPath, height: 21, width: 21),
          if (badgeLabel != null && badgeLabel != '0')
            Positioned(
              right: -8,
              top: -8,
              child: Container(
                constraints: const BoxConstraints(minWidth: 17),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.error,
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(color: theme.colorScheme.surface),
                ),
                child: Text(
                  badgeLabel!,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onError,
                    fontSize: 8,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
              ),
            ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: button,
    );
  }
}
