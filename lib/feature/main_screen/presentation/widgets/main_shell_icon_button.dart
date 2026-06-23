import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

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
      icon: Badge(
        isLabelVisible: badgeLabel != null && badgeLabel != '0',
        label: Text(badgeLabel ?? ''),
        backgroundColor: theme.colorScheme.error,
        child: SvgPicture.asset(
          iconPath,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            theme.colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
