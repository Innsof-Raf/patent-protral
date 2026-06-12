import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';

import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.vilot,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 3,
            spreadRadius: 0,
            color: AppColors.black.withValues(alpha: 0.25),
          ),
        ],
      ),
      child: ValueListenableBuilder(
        valueListenable: MainScreenHelpers.mainScreenNotifier,
        builder: (context, value, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                if (value != 0) {
                  MainScreenHelpers.mainScreenNotifier.value = 0;
                }
              },
              child: SvgPicture.asset(
                value == 0
                    ? Assets.icons.bottomBarIcons.homeSelectedIcon.path
                    : Assets.icons.bottomBarIcons.homeUnselectedIcon.path,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (value != 1) {
                  MainScreenHelpers.mainScreenNotifier.value = 1;
                }
              },
              child: SvgPicture.asset(
                value == 1
                    ? Assets.icons.bottomBarIcons.myAppointmentsSelectedIcon.path
                    : Assets.icons.bottomBarIcons.myAppointmentsUnselectedIcon.path,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (value != 2) {
                  MainScreenHelpers.mainScreenNotifier.value = 2;
                }
              },
              child: SvgPicture.asset(
                value == 2
                    ? Assets.icons.bottomBarIcons.appointmentSelectedIcon.path
                    : Assets.icons.bottomBarIcons.appointmentUnselectedIcon.path,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (value != 3) {
                  MainScreenHelpers.mainScreenNotifier.value = 3;
                }
              },
              child: SvgPicture.asset(
                value == 3
                    ? Assets.icons.bottomBarIcons.reportsSelectedIcon.path
                    : Assets.icons.bottomBarIcons.reportsUnselectedIcon.path,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (value != 4) {
                  MainScreenHelpers.mainScreenNotifier.value = 4;
                }
              },
              child: SvgPicture.asset(
                value == 4
                    ? Assets.icons.bottomBarIcons.profileSelectedIcon.path
                    : Assets.icons.bottomBarIcons.profileUnselectedIcon.path,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
