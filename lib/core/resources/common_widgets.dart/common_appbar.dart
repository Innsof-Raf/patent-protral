import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool centerTitle;
  final VoidCallback? onLeadingPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CommonAppbar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.centerTitle = false,
    this.onLeadingPressed,
    this.backgroundColor,
    this.foregroundColor,
  }) : assert(title != null || titleWidget != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onSurface;

    return AppBar(
      backgroundColor: backgroundColor ?? theme.colorScheme.surface,
      surfaceTintColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 2,
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      toolbarHeight: 64,
      centerTitle: centerTitle,
      leading: onLeadingPressed != null || Navigator.of(context).canPop()
          ? IconButton(
              icon: const Icon(Icons.chevron_left_rounded, size: 30),
              onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
              color: effectiveForegroundColor,
              tooltip: 'Back',
            )
          : null,
      title:
          titleWidget ??
          Text(
            title!,
            style: AppTextStyles.extraLargeRobotoBold.copyWith(
              color: effectiveForegroundColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
      actions: [...?actions, const Gap(8)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
