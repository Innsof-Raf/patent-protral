import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_screen_appbar.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_state_view.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_documents_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_insurance_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_personal_details_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_profile_image_section.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'MemberDetailsRoute')
class MemberDetailsScreen extends StatefulWidget {
  final int memberId;

  const MemberDetailsScreen({super.key, required this.memberId});

  @override
  State<MemberDetailsScreen> createState() => _MemberDetailsScreenState();
}

class _MemberDetailsScreenState extends State<MemberDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(
      GetMemberDetail(
        params: ProfileParams.getMemberDetail(memberId: widget.memberId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: const MemberDetailsScreenAppbar(),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.isFetchingMemberDetail) {
            return const MemberDetailsLoadingView();
          } else if (state.isMemberDetailFetchingFailed) {
            return MemberDetailsMessageView(
              title: 'Unable to load member',
              message: state.error.message,
              isError: true,
            );
          } else {
            final Member? member = _findMember(state.user?.members);

            if (member == null) {
              return const MemberDetailsMessageView(
                title: 'Member details not found',
                message: 'This member is no longer available in your profile.',
              );
            }

            final hasActiveInsurance =
                member.isInsurance && !member.isInsuranceExpired;

            return CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                  sliver: SliverToBoxAdapter(
                    child: MemberProfileImageSection(
                      memberId: widget.memberId,
                      image: member.profileImage,
                      title: member.name,
                      subtitle: [
                        if (member.age.isNotEmpty) 'Age ${member.age}',
                        if (member.nationalId.isNotEmpty)
                          'ID ${member.nationalId}',
                      ].join('  |  '),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  sliver: SliverToBoxAdapter(
                    child: MemberPersonalDetailsSection(
                      dob: member.dob,
                      email: member.emailId,
                      gender: member.gender ?? '',
                      nationalId: member.nationalId,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  sliver: SliverToBoxAdapter(
                    child: MemberInsuranceSection(
                      hasInsurance: hasActiveInsurance,
                      insuranceName: member.insuranceName ?? '',
                      memberNo: member.memberNo ?? '',
                      expireDate: member.insuranceExpDttm,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 112),
                  sliver: SliverToBoxAdapter(
                    child: MemberDocumentsSection(documents: member.memberDocs),
                  ),
                ),
              ],
            );
          }
        },
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: FilledButton.icon(
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(52),
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: theme.colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () {
            final member = _findMember(
              context.read<UserBloc>().state.user?.members,
            );
            if (member == null) return;

            InsuranceHelpers.insuranceCheackBoxNotifier.value = true;
            context.router.root.push(AddMemberRoute(member: member));
          },
          icon: const Icon(Icons.edit_outlined),
          label: const Text('Edit Insurance Details'),
        ),
      ),
    );
  }

  Member? _findMember(List<Member>? members) {
    if (members == null) return null;
    for (final member in members) {
      if (member.id == widget.memberId) return member;
    }
    return null;
  }
}
