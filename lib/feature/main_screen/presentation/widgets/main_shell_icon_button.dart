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
    return IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.3,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Badge(
        isLabelVisible: badgeLabel != null && badgeLabel != '0',
        label: Text(badgeLabel ?? ''),
        backgroundColor: theme.colorScheme.error,
        child: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(
            theme.colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
