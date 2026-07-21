import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return MainShellAppBar(
          titleWidget: const MainShellLogoTitle(),
          actions: [
            //TODO ::: add notification icon and complete
            // MainShellIconButton(
            //   iconPath: Assets.icons.notificationIcon.path,
            //   tooltip: 'Notifications',
            //   badgeLabel: '${state.homeData.notificationCount}',
            //   onPressed: () {
            //     context.router.push(const NotificationRoute());
            //   },
            // ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
