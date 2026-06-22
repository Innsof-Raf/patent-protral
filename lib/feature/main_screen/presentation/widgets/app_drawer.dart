import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_logout_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_profile_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      width: MediaQuery.sizeOf(context).width.clamp(0.0, 340.0).toDouble(),
      backgroundColor: theme.colorScheme.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(28)),
      ),
      child: ValueListenableBuilder<int>(
        valueListenable: MainScreenHelpers.mainScreenNotifier,
        builder: (context, selectedIndex, child) {
          return Column(
            children: [
              Gap(15),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SafeArea(
                      bottom: false,
                      minimum: const EdgeInsets.fromLTRB(24, 22, 24, 18),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          Assets.logos.alleviaLogoWhitePng.path,
                          width: 122,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const DrawerProfileTile(),
                    const SizedBox(height: 18),
                    AppDrawerTile(
                      iconPath: Assets.icons.homeIcon.path,
                      tileName: AppStaticTexts.home,
                      isSelected: selectedIndex == 0,
                      onPress: () => _selectTab(context, 0),
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.doctorIcon.path,
                      tileName: AppStaticTexts.bookAppointment,
                      isSelected: selectedIndex == 2,
                      onPress: () => _selectTab(context, 2),
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.calenderIcon.path,
                      tileName: AppStaticTexts.appointments,
                      isSelected: selectedIndex == 1,
                      onPress: () => _selectTab(context, 1),
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.membersIcon.path,
                      tileName: AppStaticTexts.members,
                      onPress: () {
                        _openRoute(context, const MembersRoute());
                      },
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.labIcon.path,
                      tileName: AppStaticTexts.laboratory,
                      onPress: () {
                        _openRoute(context, const LabRoute());
                      },
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.reportsIcon.path,
                      tileName: AppStaticTexts.reports,
                      isSelected: selectedIndex == 3,
                      onPress: () => _selectTab(context, 3),
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.profileIcon.path,
                      tileName: AppStaticTexts.profile,
                      isSelected: selectedIndex == 4,
                      onPress: () => _selectTab(context, 4),
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.ordersIcon.path,
                      tileName: AppStaticTexts.orders,
                      onPress: () {},
                    ),
                    AppDrawerTile(
                      iconPath: Assets.icons.mailIcon.path,
                      tileName: AppStaticTexts.mailUs,
                      onPress: () async {
                        final url = Uri.parse('mailto:info@innsof.com');
                        await launchUrl(url);
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const LogOutTile(),
            ],
          );
        },
      ),
    );
  }

  void _selectTab(BuildContext context, int index) {
    if (MainScreenHelpers.mainScreenNotifier.value != index) {
      MainScreenHelpers.mainScreenNotifier.value = index;
    }
    Navigator.of(context).pop();
  }

  void _openRoute(BuildContext context, PageRouteInfo route) {
    final router = context.router.root;
    Navigator.of(context).pop();
    router.push(route);
  }
}
