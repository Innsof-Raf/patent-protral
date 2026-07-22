import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    this.iconPath,
    this.icon,
    required this.tileName,
    required this.onPress,
    this.isSelected = false,
    this.padding,
    this.trailing,
    super.key,
  }) : assert(iconPath != null || icon != null);

  final String? iconPath;
  final IconData? icon;
  final String tileName;
  final VoidCallback onPress;
  final bool isSelected;
  final EdgeInsetsGeometry? padding;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final foregroundColor = theme.colorScheme.onPrimary;

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
      child: Material(
        color: isSelected
            ? foregroundColor.withValues(alpha: .14)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                if (iconPath != null)
                  SvgPicture.asset(
                    iconPath!,
                    height: 21,
                    width: 21,
                    colorFilter: ColorFilter.mode(
                      foregroundColor.withValues(alpha: isSelected ? 1 : .82),
                      BlendMode.srcIn,
                    ),
                  )
                else
                  Icon(
                    icon,
                    size: 21,
                    color: foregroundColor.withValues(
                      alpha: isSelected ? 1 : .82,
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
                if (trailing != null) ...[
                  const Gap(8),
                  trailing!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
