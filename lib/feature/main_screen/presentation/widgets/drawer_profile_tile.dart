import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class DrawerProfileTile extends StatelessWidget {
  const DrawerProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final user = state.user;
        final fullName = [
          user?.firstName ?? '',
          user?.lastName ?? '',
        ].where((value) => value.trim().isNotEmpty).join(' ');
        final displayName = fullName.isEmpty ? user?.userName ?? '' : fullName;
        final selectedMembers =
            user?.members.where((member) => member.id == user.idMember) ?? [];
        final member = selectedMembers.isEmpty ? null : selectedMembers.first;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withValues(alpha: .12),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: theme.colorScheme.onPrimary.withValues(alpha: .14),
            ),
          ),
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: theme.colorScheme.onPrimary,
                    backgroundImage: AssetImage(
                      Assets.images.memberDefaultProfileImage.path,
                    ),
                  ),
                  PositionedDirectional(
                    bottom: -4,
                    end: -2,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        Assets.icons.femaleGenderIcon.path,
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      (displayName.isEmpty ? context.lang.user : displayName)
                          .toTitleCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      member == null
                          ? user?.mobileNumber ?? ''
                          : '${context.lang.age} ${member.age} | ${context.lang.nationalId} ${member.nationalId}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyTextRoboto.copyWith(
                        color: theme.colorScheme.onPrimary.withValues(
                          alpha: .72,
                        ),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(6),
                    Text(
                      user?.emailId ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyTextRoboto.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
