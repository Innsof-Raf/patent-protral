import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;
  final VoidCallback? onLeadingPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CommonAppbar({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle = false,
    this.onLeadingPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onSurface;

    return AppBar(
      backgroundColor: backgroundColor ?? theme.colorScheme.surface,
      surfaceTintColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 3,
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      toolbarHeight: 70,
      titleSpacing: 0,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      leadingWidth: 72,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            tooltip: 'Back',
            style: IconButton.styleFrom(
              backgroundColor: theme.colorScheme.surfaceContainerHighest
                  .withValues(alpha: .4),
              foregroundColor: effectiveForegroundColor,
              fixedSize: const Size.square(46),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: theme.colorScheme.outlineVariant.withValues(
                    alpha: 0.2,
                  ),
                ),
              ),
            ),
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
            onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
          ),
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.extraLargeRobotoBold.copyWith(
          color: effectiveForegroundColor,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
        ),
      ),
      actions: [...?actions, const Gap(12)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
