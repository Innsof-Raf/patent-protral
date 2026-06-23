import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
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
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      toolbarHeight: 70,
      titleSpacing: 0,
      centerTitle: centerTitle,
      leadingWidth: 72,
      leading: Center(
        child: Builder(
          builder: (context) => MainShellIconButton(
            iconPath: Assets.icons.drawerIcon.path,
            tooltip: 'Menu',
            onPressed: Scaffold.of(context).openDrawer,
          ),
        ),
      ),
      title:
          titleWidget ??
          Text(
            title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.extraLargeRobotoBold.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
            ),
          ),
      actions: [...actions, const Gap(12)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class MainShellLogoTitle extends StatelessWidget {
  const MainShellLogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logos.alleviaLogoGray.path,
      fit: BoxFit.contain,
      width: 100,
    );
  }
}
