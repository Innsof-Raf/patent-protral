import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
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
      scrolledUnderElevation: 0,
      toolbarHeight: 63,
      titleSpacing: 0,
      centerTitle: centerTitle,
      leadingWidth: 64,
      leading: Builder(
        builder: (context) => MainShellIconButton(
          iconPath: Assets.icons.drawerIcon.path,
          tooltip: 'Menu',
          onPressed: Scaffold.of(context).openDrawer,
        ),
      ),
      title:
          titleWidget ??
          Text(
            title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w700,
            ),
          ),
      actions: actions.isEmpty
          ? const [SizedBox(width: 8)]
          : [...actions, const SizedBox(width: 8)],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: 1,
          thickness: 1,
          color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}

class MainShellLogoTitle extends StatelessWidget {
  const MainShellLogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logos.alleviaLogoGray.path,
      fit: BoxFit.contain,
      width: 86,
    );
  }
}
