import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/logout_dialog.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_header.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_menu_item.dart';

@RoutePage(name: 'MyProfileRoute')
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.isLoading) return const CommonLoadingView();

          final user = state.user;
          if (user == null) return const SizedBox.shrink();

          final items = [
            ProfileMenuItem(
              icon: Icons.person_outline_rounded,
              title: AppStaticTexts.profileTitle,
              iconColor: AppColors.iconBlue,
              backgroundColor: AppColors.iconBlueBg,
              onTap: () =>
                  context.router.root.push(const EditProfileDetailsRoute()),
            ),
            ProfileMenuItem(
              icon: Icons.group_outlined,
              title: AppStaticTexts.myFamily,
              iconColor: AppColors.iconGreen,
              backgroundColor: AppColors.iconGreenBg,
              onTap: () => context.router.root.push(const MembersRoute()),
            ),
            // ProfileMenuItem(
            //   icon: Icons.headset_mic_outlined,
            //   title: AppStaticTexts.helpAndSupport,
            //   iconColor: AppColors.iconPurple,
            //   backgroundColor: AppColors.iconPurpleBg,
            //   onTap: () {},
            // ),
            // ProfileMenuItem(
            //   icon: Icons.key_outlined,
            //   title: AppStaticTexts.createPassword,
            //   iconColor: AppColors.iconOrange,
            //   backgroundColor: AppColors.iconOrangeBg,
            //   onTap: () => context.router.root.push(const SetPasswordRoute()),
            // ),
            ProfileMenuItem(
              icon: Icons.description_outlined,
              title: AppStaticTexts.termsAndConditions,
              iconColor: AppColors.iconGreen,
              backgroundColor: AppColors.iconGreenBg,
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.lock_outline_rounded,
              title: AppStaticTexts.privacyPolicy,
              iconColor: AppColors.iconBlue,
              backgroundColor: AppColors.iconBlueBg,
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.translate_rounded,
              title: AppStaticTexts.changeLanguage,
              iconColor: AppColors.iconTeal,
              backgroundColor: AppColors.iconTealBg,
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.person_remove_outlined,
              title: AppStaticTexts.deleteProfile,
              iconColor: AppColors.iconOrange,
              backgroundColor: AppColors.iconOrangeBg,
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.logout_rounded,
              title: AppStaticTexts.logout,
              iconColor: AppColors.iconRed,
              backgroundColor: AppColors.iconRedBg,
              onTap: () => _showLogoutDialog(context),
            ),
          ];

          return RefreshIndicator(
            onRefresh: () async {
              context.read<UserBloc>().add(const RefreshToken());
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: ProfileHeader(user: user)),
                const SliverToBoxAdapter(
                  child: Divider(height: 1, thickness: 1),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 12, bottom: 24),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      if (index.isOdd) {
                        return Divider(
                          height: 1,
                          thickness: 0.5,
                          indent: 72,
                          endIndent: 20,
                          color: theme.colorScheme.outlineVariant.withValues(
                            alpha: 0.4,
                          ),
                        );
                      }
                      return items[index ~/ 2];
                    }, childCount: items.length * 2 - 1),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => const LogoutDialog());
}
