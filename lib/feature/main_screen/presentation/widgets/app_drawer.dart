import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/language_helper.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_logout_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/drawer_profile_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      width: MediaQuery.sizeOf(context).width.clamp(0.0, 320.0).toDouble(),
      backgroundColor: theme.colorScheme.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(32)),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Assets.logos.innsofWhite.svg(
                height: 90,
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
              ),
            ),
            const DrawerProfileTile(),
            const Gap(8),
            Expanded(
              child: ValueListenableBuilder<int>(
                valueListenable: MainScreenHelpers.mainScreenNotifier,
                builder: (context, selectedIndex, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionHeader(context, context.lang.menu),
                      AppDrawerTile(
                        iconPath: Assets.icons.homeIcon.path,
                        tileName: context.lang.home,
                        isSelected: selectedIndex == 0,
                        onPress: () => _selectTab(context, 0),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.doctorIcon.path,
                        tileName: context.lang.bookAppointment,
                        isSelected: selectedIndex == 2,
                        onPress: () => _selectTab(context, 2),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.calenderIcon.path,
                        tileName: context.lang.appointments,
                        isSelected: selectedIndex == 1,
                        onPress: () => _selectTab(context, 1),
                      ),
                      const Gap(8),
                      _buildSectionHeader(context, context.lang.healthRecords),
                      AppDrawerTile(
                        iconPath: Assets.icons.membersIcon.path,
                        tileName: context.lang.members,
                        onPress: () =>
                            _openRoute(context, const MembersRoute()),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.labIcon.path,
                        tileName: context.lang.laboratory,
                        onPress: () => _openRoute(context, const LabRoute()),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.reportsIcon.path,
                        tileName: context.lang.reports,
                        isSelected: selectedIndex == 3,
                        onPress: () => _selectTab(context, 3),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.attachmentIcon.path,
                        tileName: context.lang.documents,
                        onPress: () =>
                            _openRoute(context, const DocumentsRoute()),
                      ),
                      AppDrawerTile(
                        iconPath: Assets.icons.insuranceCartIcon.path,
                        tileName: context.lang.medicalInsurance,
                        onPress: () =>
                            _openRoute(context, const MedicalInsuranceRoute()),
                      ),
                      const Gap(8),
                      _buildSectionHeader(context, context.lang.profileTitle),
                      AppDrawerTile(
                        iconPath: Assets.icons.profileIcon.path,
                        tileName: context.lang.profile,
                        isSelected: selectedIndex == 4,
                        onPress: () => _selectTab(context, 4),
                      ),
                      AppDrawerTile(
                        icon: Icons.translate_outlined,
                        tileName: context.lang.changeLanguage,
                        onPress: () =>
                            LanguageHelper.showLanguageSelection(context),
                      ),
                    ],
                  );
                },
              ),
            ),
            const LogOutTile(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) => Padding(
    padding: const EdgeInsets.fromLTRB(28, 4, 16, 2),
    child: Text(
      title.toUpperCase(),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.5),
        fontSize: 10,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.1,
      ),
    ),
  );

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
