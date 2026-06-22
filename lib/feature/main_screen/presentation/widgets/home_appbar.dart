import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return MainShellAppBar(
          titleWidget: const MainShellLogoTitle(),
          actions: [
            MainShellIconButton(
              iconPath: Assets.icons.notificationIcon.path,
              tooltip: 'Notifications',
              badgeLabel: '${state.homeData.notificationCount}',
              onPressed: () {
                context.router.push(const NotificationRoute());
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
