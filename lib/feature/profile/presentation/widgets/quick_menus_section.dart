import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/quick_menu_button.dart';
import 'package:patient_portal/gen/assets.gen.dart';

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
            'Quick actions',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Jump to the most used profile tasks.',
            style: theme.textTheme.bodySmall?.copyWith(
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
                title: 'Reports',
                subtitle: 'View files',
              ),
              QuickMenuButton(
                imagePath: Assets.icons.lockIconDart.path,
                onPressed: () {
                  context.router.root.push(const SetPasswordRoute());
                },
                title: 'Password',
                subtitle: 'Change login',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
