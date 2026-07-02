import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/quick_menu_button.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ProfileSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.lang.quickActions,
            style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            context.lang.quickActionsSubtitle,
            style: AppTextStyles.bodyTextRoboto.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              QuickMenuButton(
                imagePath: Assets.icons.viewReportsIcon.path,
                onPressed: () {
                  MainScreenHelpers.mainScreenNotifier.value = 3;
                },
                title: context.lang.reports,
                subtitle: context.lang.viewFiles,
              ),
              QuickMenuButton(
                imagePath: Assets.icons.lockIconDart.path,
                onPressed: () {
                  context.router.root.push(const SetPasswordRoute());
                },
                title: context.lang.password,
                subtitle: context.lang.changeLogin,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
