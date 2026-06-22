import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/sliver_search_header.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/member_search_bloc/member_search_bloc.dart';
import 'package:patient_portal/feature/members/presentation/widgets/deletable_member_tile.dart';
import 'package:patient_portal/feature/members/presentation/widgets/members_header.dart';
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.surface,
      appBar: CommonAppbar(
        title: AppStaticTexts.members,
        actions: [
          TextButton(
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
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                sliver: SliverToBoxAdapter(
                  child: MembersHeader(count: members.length),
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
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
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
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return DeletableMemberTile(member: members[index]);
            },
          ),
        );
      },
    );
  }
}
