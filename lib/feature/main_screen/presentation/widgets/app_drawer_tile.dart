import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    required this.iconPath,
    required this.tileName,
    required this.onPress,
    this.isSelected = false,
    super.key,
  });

  final String iconPath;
  final String tileName;
  final VoidCallback onPress;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final foregroundColor = theme.colorScheme.onPrimary;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
      child: Material(
        color: isSelected
            ? foregroundColor.withValues(alpha: .14)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Row(
              children: [
                SvgPicture.asset(
                  iconPath,
                  height: 21,
                  width: 21,
                  colorFilter: ColorFilter.mode(
                    foregroundColor.withValues(alpha: isSelected ? 1 : .82),
                    BlendMode.srcIn,
                  ),
                ),
                const Gap(14),
                Expanded(
                  child: Text(
                    tileName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.largeRobotoNormal.copyWith(
                      color: foregroundColor.withValues(
                        alpha: isSelected ? 1 : .86,
                      ),
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
