import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/feature_header.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/sliver_search_header.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/member_search_bloc/member_search_bloc.dart';
import 'package:patient_portal/feature/members/presentation/widgets/deletable_member_tile.dart';
import 'package:patient_portal/feature/members/presentation/widgets/members_state_view.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'MembersRoute')
class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _showDeleteConfirmation(BuildContext context, List<int> selectedIds) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          AppStaticTexts.deleteMembers,
          style: AppTextStyles.subHeadingSemiBoldRoboto,
        ),
        content: Text(
          AppStaticTexts.deleteMembersMessage,
          style: AppTextStyles.largeRobotoNormal,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              AppStaticTexts.cancel,
              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<UserBloc>().add(
                UserEvent.deleteMembers(memberIds: selectedIds),
              );
              context.read<DeleteMemberBloc>().add(
                const ClearSelectedMemberList(),
              );
              Navigator.pop(dialogContext);
            },
            child: Text(
              AppStaticTexts.delete,
              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.surface,
      appBar: CommonAppbar(
        title: AppStaticTexts.members,
        actions: [
          BlocBuilder<DeleteMemberBloc, DeleteMemberState>(
            builder: (context, state) {
              if (state.selectedMebersList.isNotEmpty) {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<DeleteMemberBloc>().add(
                          const ClearSelectedMemberList(),
                        );
                      },
                      icon: const Icon(Icons.close_rounded),
                    ),
                    IconButton(
                      onPressed: () {
                        _showDeleteConfirmation(
                          context,
                          state.selectedMebersList,
                        );
                      },
                      icon: const Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              }

              return TextButton(
                onPressed: () {
                  final membersIdList = context
                      .read<UserBloc>()
                      .state
                      .user!
                      .members
                      .map((m) => m.id)
                      .toList();
                  context.read<DeleteMemberBloc>().add(
                    SelectAllMembers(membersIdList: membersIdList),
                  );
                },
                child: const Text(AppStaticTexts.selectAll),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, userState) {
          final members = userState.user?.members ?? [];

          return CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),
                sliver: SliverToBoxAdapter(
                  child: FeatureHeader(
                    title: AppStaticTexts.memberList,
                    subtitle: AppStaticTexts.memberListSubtitle,
                    badgeText: members.isEmpty
                        ? AppStaticTexts.noMembersAdded
                        : '${members.length} ${AppStaticTexts.membersLinked}',
                  ),
                ),
              ),
              if (members.isNotEmpty)
                SliverSearchHeader(
                  controller: searchController,
                  title: AppStaticTexts.searchMemberHint,
                  hintText: AppStaticTexts.searchMembers,
                  onChanged: (value) {
                    context.read<MemberSearchBloc>().add(
                      SearchMember(
                        members: members,
                        searchKey: value.toLowerCase(),
                      ),
                    );
                  },
                ),
              _MembersResultSliver(
                allMembers: members,
                searchController: searchController,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        elevation: 0,
        onPressed: () {
          InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
          context.router.root.push(AddMemberRoute());
        },
        icon: const Icon(Icons.person_add_alt_1_rounded),
        label: const Text(AppStaticTexts.addMember),
      ),
    );
  }
}

class _MembersResultSliver extends StatelessWidget {
  const _MembersResultSliver({
    required this.allMembers,
    required this.searchController,
  });

  final List<Member> allMembers;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    if (allMembers.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: MembersStateView(
          title: AppStaticTexts.noMembersFound,
          message: AppStaticTexts.noMembersFoundMessage,
          icon: Icons.group_add_outlined,
        ),
      );
    }

    return BlocBuilder<MemberSearchBloc, MemberSearchState>(
      builder: (context, searchState) {
        final members = searchController.text.isNotEmpty
            ? searchState.searchResultMembers
            : allMembers;

        if (members.isEmpty) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: MembersStateView(
              title: AppStaticTexts.noMatchingMember,
              message: AppStaticTexts.noMatchingMemberMessage,
              icon: Icons.manage_search_rounded,
            ),
          );
        }

        return SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 104),
          sliver: SliverList.separated(
            itemCount: members.length,
            separatorBuilder: (context, index) => const Gap(12),
            itemBuilder: (context, index) =>
                DeletableMemberTile(member: members[index]),
          ),
        );
      },
    );
  }
}
