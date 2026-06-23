import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class DeletableMemberTile extends StatelessWidget {
  const DeletableMemberTile({super.key, required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeleteMemberBloc, DeleteMemberState>(
      builder: (context, state) {
        final isSelected = state.selectedMebersList.contains(member.id);
        final isSelectionMode = state.selectedMebersList.isNotEmpty;

        return _MemberCard(
          member: member,
          isSelected: isSelected,
          onLongPress: () {
            context.read<DeleteMemberBloc>().add(
              UpdateSelectedMemberList(memberId: member.id),
            );
          },
          onTap: () {
            if (isSelectionMode) {
              context.read<DeleteMemberBloc>().add(
                UpdateSelectedMemberList(memberId: member.id),
              );
              return;
            }

            context.router.root.push(MemberDetailsRoute(memberId: member.id));
          },
        );
      },
    );
  }
}

class _MemberCard extends StatelessWidget {
  const _MemberCard({
    required this.member,
    required this.isSelected,
    required this.onTap,
    required this.onLongPress,
  });

  final Member member;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      decoration: BoxDecoration(
        color: isSelected
            ? theme.colorScheme.primaryContainer.withValues(alpha: .58)
            : theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.outlineVariant.withValues(alpha: .55),
          width: isSelected ? 1.2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: .05),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(22),
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          onLongPress: onLongPress,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                _MemberAvatar(member: member),
                const Gap(12),
                Expanded(child: _MemberDetails(member: member)),
                const Gap(10),
                if (member.isInsurance && !member.isInsuranceExpired)
                  const _InsuranceBadge(),
                const Gap(8),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 160),
                  child: isSelected
                      ? Icon(
                          Icons.check_circle_rounded,
                          key: const ValueKey('selected'),
                          color: theme.colorScheme.primary,
                        )
                      : Icon(
                          Icons.chevron_right_rounded,
                          key: const ValueKey('open'),
                          color: theme.colorScheme.onSurfaceVariant,
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

class _MemberAvatar extends StatelessWidget {
  const _MemberAvatar({required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = member.profileImage;

    return CircleAvatar(
      radius: 26,
      backgroundColor: theme.colorScheme.primaryContainer,
      backgroundImage: image == null
          ? null
          : CachedNetworkImageProvider(
              '${ConstantUrls.memberImageUrl}/${member.id}/$image',
            ),
      child: image == null
          ? Text(
              member.name.trim().isEmpty
                  ? '?'
                  : member.name.trim()[0].toUpperCase(),
              style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w900,
              ),
            )
          : null,
    );
  }
}

class _MemberDetails extends StatelessWidget {
  const _MemberDetails({required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = [
      if (member.age.isNotEmpty) '${AppStaticTexts.age} ${member.age}',
      if (member.nationalId.isNotEmpty)
        '${AppStaticTexts.nationalId} ${member.nationalId}',
    ].join('  |  ');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          member.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.largeSemiBoldRoboto.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Gap(5),
        Text(
          subtitle.isEmpty ? AppStaticTexts.memberProfile : subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyTextInter.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _InsuranceBadge extends StatelessWidget {
  const _InsuranceBadge();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: .42),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        AppStaticTexts.insured,
        style: AppTextStyles.bodySmallInterNormal.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
