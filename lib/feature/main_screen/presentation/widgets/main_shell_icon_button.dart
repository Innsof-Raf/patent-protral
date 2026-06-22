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
          alpha: .4,
        ),
        foregroundColor: theme.colorScheme.onSurface,
        fixedSize: const Size.square(46),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
          ),
        ),
      ),
      onPressed: onPressed,
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(iconPath, height: 24, width: 24),
          if (badgeLabel != null && badgeLabel != '0')
            Positioned(
              right: -4,
              top: -4,
              child: Container(
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.error,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: theme.colorScheme.surface,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    badgeLabel!,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onError,
                      fontSize: 9,
                      fontWeight: FontWeight.w800,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: button,
    );
  }
}
