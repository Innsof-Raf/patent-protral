import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * .93,
        ),
        child: Material(
          elevation: 12,
          shadowColor: colorScheme.shadow.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(30),
          color: colorScheme.surface,
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: ValueListenableBuilder<int>(
              valueListenable: MainScreenHelpers.mainScreenNotifier,
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _BottomNavItem(
                        label: context.lang.home,
                        selectedIconPath:
                            Assets.icons.bottomBarIcons.homeSelectedIcon.path,
                        isSelected: value == 0,
                        onTap: () => _selectTab(0),
                      ),
                      _BottomNavItem(
                        label: context.lang.visits,
                        selectedIconPath: Assets
                            .icons
                            .bottomBarIcons
                            .myAppointmentsSelectedIcon
                            .path,
                        isSelected: value == 1,
                        onTap: () => _selectTab(1),
                      ),
                      _BottomNavItem(
                        label: context.lang.book,
                        selectedIconPath: Assets
                            .icons
                            .bottomBarIcons
                            .appointmentSelectedIcon
                            .path,
                        isSelected: value == 2,
                        onTap: () => _selectTab(2),
                      ),
                      _BottomNavItem(
                        label: context.lang.reports,
                        selectedIconPath: Assets
                            .icons
                            .bottomBarIcons
                            .reportsSelectedIcon
                            .path,
                        isSelected: value == 3,
                        onTap: () => _selectTab(3),
                      ),
                      _BottomNavItem(
                        label: context.lang.profile,
                        selectedIconPath: Assets
                            .icons
                            .bottomBarIcons
                            .profileSelectedIcon
                            .path,
                        isSelected: value == 4,
                        onTap: () => _selectTab(4),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _selectTab(int index) {
    if (MainScreenHelpers.mainScreenNotifier.value != index) {
      MainScreenHelpers.mainScreenNotifier.value = index;
    }
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({
    required this.label,
    required this.selectedIconPath,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final String selectedIconPath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          highlightColor: Colors.transparent,
          splashColor: colorScheme.primary.withValues(alpha: 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOutBack,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? colorScheme.primaryContainer.withValues(alpha: 0.6)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  selectedIconPath,
                  height: isSelected ? 24 : 20,
                  width: isSelected ? 24 : 20,
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Gap(4),
              AnimatedDefaultTextStyle(
                curve: Curves.easeOutBack,
                duration: const Duration(milliseconds: 200),
                style: AppTextStyles.bodyTextRoboto.copyWith(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                  fontSize: isSelected ? 10 : 8,
                ),
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
