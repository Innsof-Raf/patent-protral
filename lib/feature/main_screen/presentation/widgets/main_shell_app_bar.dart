import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_icon_button.dart';

class MainShellAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainShellAppBar({
    this.title,
    this.titleWidget,
    this.actions = const [],
    this.centerTitle = false,
    super.key,
  }) : assert(title != null || titleWidget != null);

  final String? title;
  final Widget? titleWidget;
  final List<Widget> actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      surfaceTintColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 3,
      toolbarHeight: preferredSize.height,
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      centerTitle: centerTitle,
      leading: Center(
        child: MainShellIconButton(
          iconPath: Assets.icons.drawerIcon.path,
          tooltip: context.lang.menu,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title:
          titleWidget ??
          Text(
            title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
      actions: [...actions, const Gap(8)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MainShellLogoTitle extends StatelessWidget {
  const MainShellLogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.logos.innsofColor.svg(fit: BoxFit.contain, width: 100);
  }
}
