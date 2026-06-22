import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_member_tile.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';

class MemberSection extends StatelessWidget {
  const MemberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final theme = Theme.of(context);
        final members = state.user?.members ?? [];

        return ProfileSectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppStaticTexts.members,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          members.isEmpty
                              ? AppStaticTexts.noMembersAddedYet
                              : '${members.length} ${AppStaticTexts.membersLinked}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {
                      context.router.root.push(const MembersRoute());
                    },
                    icon: const Icon(Icons.arrow_forward_rounded),
                    tooltip: AppStaticTexts.viewMembersTooltip,
                  ),
                ],
              ),
              const SizedBox(height: 14),
              if (members.isEmpty)
                const _EmptyMembersView()
              else
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: members.length > 3 ? 3 : members.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return ProfileMemberTile(member: members[index]);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

class _EmptyMembersView extends StatelessWidget {
  const _EmptyMembersView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .32),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.group_add_outlined,
            color: theme.colorScheme.primary,
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            AppStaticTexts.noMembersFound,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            AppStaticTexts.addMembersSubtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
