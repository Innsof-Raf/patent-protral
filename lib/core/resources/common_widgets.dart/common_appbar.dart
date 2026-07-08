import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_icon_button.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool centerTitle;
  final VoidCallback? onLeadingPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;

  const CommonAppbar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.centerTitle = false,
    this.onLeadingPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
  }) : assert(title != null || titleWidget != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onSurface;

    return AppBar(
      backgroundColor: backgroundColor ?? theme.colorScheme.surface,
      surfaceTintColor: theme.colorScheme.surface,
      elevation: elevation ?? 0,
      scrolledUnderElevation: 3,
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      centerTitle: centerTitle,
      leading: (onLeadingPressed != null || Navigator.of(context).canPop())
          ? Center(
              child: CommonIconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed:
                    onLeadingPressed ?? () => Navigator.of(context).pop(),
                color: effectiveForegroundColor,
                tooltip: context.lang.back,
              ),
            )
          : null,
      title:
          titleWidget ??
          Text(
            title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge?.copyWith(
              color: effectiveForegroundColor,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
      actions: [...?actions, const Gap(8)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
