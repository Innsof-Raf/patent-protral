import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: theme.colorScheme.onPrimary.withValues(alpha: .12),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 12),
                blurRadius: 26,
                color: theme.colorScheme.shadow.withValues(alpha: .18),
              ),
            ],
          ),
          child: ValueListenableBuilder<int>(
            valueListenable: MainScreenHelpers.mainScreenNotifier,
            builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    _BottomNavItem(
                      label: 'Home',
                      selectedIconPath:
                          Assets.icons.bottomBarIcons.homeSelectedIcon.path,
                      unselectedIconPath:
                          Assets.icons.bottomBarIcons.homeUnselectedIcon.path,
                      isSelected: value == 0,
                      onTap: () => _selectTab(0),
                    ),
                    _BottomNavItem(
                      label: 'Visits',
                      selectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .myAppointmentsSelectedIcon
                          .path,
                      unselectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .myAppointmentsUnselectedIcon
                          .path,
                      isSelected: value == 1,
                      onTap: () => _selectTab(1),
                    ),
                    _BottomNavItem(
                      label: 'Book',
                      selectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .appointmentSelectedIcon
                          .path,
                      unselectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .appointmentUnselectedIcon
                          .path,
                      isSelected: value == 2,
                      onTap: () => _selectTab(2),
                    ),
                    _BottomNavItem(
                      label: 'Reports',
                      selectedIconPath:
                          Assets.icons.bottomBarIcons.reportsSelectedIcon.path,
                      unselectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .reportsUnselectedIcon
                          .path,
                      isSelected: value == 3,
                      onTap: () => _selectTab(3),
                    ),
                    _BottomNavItem(
                      label: 'Profile',
                      selectedIconPath:
                          Assets.icons.bottomBarIcons.profileSelectedIcon.path,
                      unselectedIconPath: Assets
                          .icons
                          .bottomBarIcons
                          .profileUnselectedIcon
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
    required this.unselectedIconPath,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final String selectedIconPath;
  final String unselectedIconPath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Tooltip(
        message: label,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOutCubic,
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: isSelected
                    ? theme.colorScheme.onPrimary.withValues(alpha: .14)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    isSelected ? selectedIconPath : unselectedIconPath,
                    height: 22,
                    width: 22,
                  ),
                  const SizedBox(height: 4),
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 180),
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onPrimary.withValues(
                        alpha: isSelected ? 1 : .72,
                      ),
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w500,
                      fontSize: 9,
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
        ),
      ),
    );
  }
}
