import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/main_screen/helpers/main_screen_helpers.dart';

import '../../../resources/app_colors.dart';

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
                    ? "assets/icons/bottom_bar_icons/home_selected_icon.svg"
                    : "assets/icons/bottom_bar_icons/home_unselected_icon.svg",
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
                    ? "assets/icons/bottom_bar_icons/my_appointments_selected_icon.svg"
                    : "assets/icons/bottom_bar_icons/my_appointments_unselected_icon.svg",
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
                    ? "assets/icons/bottom_bar_icons/appointment_selected icon.svg"
                    : "assets/icons/bottom_bar_icons/appointment_unselected_icon.svg",
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
                    ? "assets/icons/bottom_bar_icons/reports_selected_icon.svg"
                    : "assets/icons/bottom_bar_icons/reports_unselected_icon.svg",
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
                    ? "assets/icons/bottom_bar_icons/profile_selected_icon.svg"
                    : "assets/icons/bottom_bar_icons/profile_unselected_icon.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
