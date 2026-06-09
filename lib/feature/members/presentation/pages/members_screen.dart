import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/member_search_bloc/member_search_bloc.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/models/member/member_model.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/resources/common_widgets.dart/member_tile.dart';
import 'package:patient_portal/resources/dimens.dart';
import 'package:patient_portal/route/route_constants.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CommonAppbar(title: 'Members'),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.constHeight,
            const Text(
              'Member list',
              style: AppTextStyles.subHeaddingSemiBoldRoboto,
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Text(
                  state.user!.members.isEmpty
                      ? 'No members found add a member'
                      : 'Found ${state.user!.members.length}  Members or add new member',
                  style: AppTextStyles.bodyTextInter,
                );
              },
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.user!.members.isEmpty
                    ? const SizedBox.shrink()
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Dimens.constHeight,
                          Form(
                            key: formKey,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                context.read<MemberSearchBloc>().add(
                                  SearchMember(
                                    members: state.user!.members,
                                    searchKey: searchController.text
                                        .toLowerCase(),
                                  ),
                                );
                              },
                              controller: searchController,
                              style: AppTextStyles.largeRobotoNormal.copyWith(
                                color: AppColors.textBluishDark,
                              ),
                              decoration: const InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: AppColors.textDark,
                                ),
                                hintStyle: AppTextStyles.largeRobotoNormal,
                                hintText: 'Search Here',
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                          ),
                        ],
                      );
              },
            ),
            Expanded(
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, userState) {
                  return userState.user!.members.isEmpty
                      ? const Center(
                          child: Text(
                            'No members found add new member',
                            style: AppTextStyles.largeRobotoNormal,
                          ),
                        )
                      : BlocBuilder<MemberSearchBloc, MemberSearchState>(
                          builder: (context, searchState) {
                            List<MemberModel> members = [];
                            if (searchController.text.isNotEmpty) {
                              members = searchState.searchResultMembers;
                            } else {
                              members = userState.user!.members;
                            }
                            return members.isEmpty
                                ? const Center(
                                    child: Text(
                                      'No Member found',
                                      style: AppTextStyles.largeRobotoNormal,
                                    ),
                                  )
                                : ListView.separated(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 80,
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 10),
                                    itemCount: members.length,
                                    itemBuilder: (context, index) =>
                                        MemberTile(member: members[index]),
                                  );
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.vilot,
        onPressed: () {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          Navigator.of(context).pushNamed(RouteConstants.addMemberScreen);
        },
        child: const Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
