import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/core/route/app_router.dart';

import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          titleSpacing: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.black,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          leading: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset(Assets.icons.drawerIcon.path),
          ),
          title: Image.asset(
            Assets.logos.alleviaLogoGray.path,
            fit: BoxFit.contain,
            width: 72,
          ),
          actions: [
            // TextButton(
            //     style: TextButton.styleFrom(
            //         shape: const CircleBorder(),
            //         padding: const EdgeInsets.all(5),
            //         minimumSize: const Size(0, 0)),
            //     onPressed: () {},
            //     child: const Icon(
            //       Icons.search,
            //       color: AppColors.textDark,
            //     )),
            TextButton(
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: AppColors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(5),
                minimumSize: const Size(0, 0),
              ),
              onPressed: () {
                context.router.push(const NotificationRoute());
              },
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topRight,
                children: [
                  SvgPicture.asset(Assets.icons.notificationIcon.path),
                  Positioned(
                    top: -4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.badgeColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        '${state.homeData.notificationCount}',
                        style: AppTextStyles.bodyXSmallInterNormal.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
