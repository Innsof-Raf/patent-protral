import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fullName = _fullName(user, context);
    final initial = fullName.trim().isEmpty
        ? context.lang.unknownInitial
        : fullName.trim()[0].toUpperCase();

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(color: theme.colorScheme.surface),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: const BoxDecoration(
              color: AppColors.iconBlueBg,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                initial,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: AppColors.iconBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName.toTitleCase(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.profileNameColor,
                    fontSize: 20,
                  ),
                ),
                const Gap(2),
                Text(
                  '${context.lang.uhid}: NA',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.profileUHIDColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _fullName(User user, BuildContext context) {
    final name = '${user.firstName} ${user.lastName}'.trim();
    if (name.isNotEmpty) return name;
    return user.userName.isNotEmpty ? user.userName : context.lang.user;
  }
}
