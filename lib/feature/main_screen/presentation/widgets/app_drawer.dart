import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_logout_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_profile_tile.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.vilot,
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: constraints.maxHeight * .038),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      Assets.logos.alleviaLogoWhitePng.path,
                      width: 110,
                      height: 33.96,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * .038),
                  const DrawerProfileTile(),
                  SizedBox(height: constraints.maxHeight * .04),
                  AppDrawerTile(
                    iconPath: Assets.icons.homeIcon.path,
                    tileName: "Home",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 0) {
                        MainScreenHelpers.mainScreenNotifier.value = 0;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.doctorIcon.path,
                    tileName: "Book Appointment",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 2) {
                        MainScreenHelpers.mainScreenNotifier.value = 2;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.calenderIcon.path,
                    tileName: "Appoinments",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 1) {
                        MainScreenHelpers.mainScreenNotifier.value = 1;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.membersIcon.path,
                    tileName: "Members",
                    onPress: () {
                      context.router.push(const MembersRoute());
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.labIcon.path,
                    tileName: "Laboratory",
                    onPress: () {
                      context.router.push(const LabRoute());
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.reportsIcon.path,
                    tileName: "Reports",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 3) {
                        MainScreenHelpers.mainScreenNotifier.value = 3;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.profileIcon.path,
                    tileName: "Profile",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 4) {
                        MainScreenHelpers.mainScreenNotifier.value = 4;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.ordersIcon.path,
                    tileName: "Orders",
                    onPress: () {},
                  ),
                  AppDrawerTile(
                    iconPath: Assets.icons.mailIcon.path,
                    tileName: "Mail Us",
                    onPress: () async {
                      var url = Uri.parse("mailto:info@innsof.com");
                      await launchUrl(url);
                    },
                  ),
                ],
              ),
            ),
            const LogOutTile(),
          ],
        ),
      ),
    );
  }
}
