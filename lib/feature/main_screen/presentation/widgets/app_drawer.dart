import 'package:flutter/material.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_logout_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_profile_tile.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/route/route_constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      'assets/logos/allevia_logo_white.png',
                      width: 110,
                      height: 33.96,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * .038),
                  const DrawerProfileTile(),
                  SizedBox(height: constraints.maxHeight * .04),
                  AppDrawerTile(
                    iconPath: "assets/icons/home_icon.svg",
                    tileName: "Home",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 0) {
                        MainScreenHelpers.mainScreenNotifier.value = 0;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/doctor_icon.svg",
                    tileName: "Book Appointment",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 2) {
                        MainScreenHelpers.mainScreenNotifier.value = 2;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/calender_icon.svg",
                    tileName: "Appoinments",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 1) {
                        MainScreenHelpers.mainScreenNotifier.value = 1;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/members_icon.svg",
                    tileName: "Members",
                    onPress: () {
                      Navigator.of(
                        context,
                      ).pushNamed(RouteConstants.membersScreen);
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/lab_icon.svg",
                    tileName: "Laboratory",
                    onPress: () {
                      Navigator.of(context).pushNamed(RouteConstants.labScreen);
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/reports_icon.svg",
                    tileName: "Reports",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 3) {
                        MainScreenHelpers.mainScreenNotifier.value = 3;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/profile_icon.svg",
                    tileName: "Profile",
                    onPress: () {
                      if (MainScreenHelpers.mainScreenNotifier.value != 4) {
                        MainScreenHelpers.mainScreenNotifier.value = 4;
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/orders_icon.svg",
                    tileName: "Orders",
                    onPress: () {},
                  ),
                  AppDrawerTile(
                    iconPath: "assets/icons/mail_icon.svg",
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
