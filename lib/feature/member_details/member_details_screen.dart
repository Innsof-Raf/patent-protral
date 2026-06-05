import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/models/member/member_model.dart';
import 'package:patient_portal/route/route_constants.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../resources/common_helpers/insurance_helpers.dart';
import 'widgets/member_details_screen_appbar.dart';
import 'widgets/member_documents_section.dart';
import 'widgets/member_insurance_section.dart';
import 'widgets/member_personal_details_section.dart';
import 'widgets/member_profile_image_section.dart';

class MemberDetailsScreen extends StatelessWidget {
  final int memberId;
  const MemberDetailsScreen({super.key, required this.memberId});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(GetMemberDetail(memberId: memberId));
    });

    return Scaffold(
      appBar: const MemberDetailsScreenAppbar(),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.isFetchingMemberDetail) {
            return LayoutBuilder(
                builder: (context, constraints) => Center(
                      child: Image.asset(
                        'assets/gif_images/Ripple-0 2.gif',
                        width: constraints.maxWidth * .3,
                      ),
                    ));
          } else if (state.isMemberDetailFetchingFailed) {
            return Center(
              child: Text(
                state.error.message,
                style: AppTextStyles.largeRobotoNormal,
              ),
            );
          } else {
            final MemberModel member = state.user!.members
                .singleWhere((element) => element.id == memberId);

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                padding: const EdgeInsets.only(bottom: 55),
                children: [
                  MemberProfileImageSection(
                    memberId: memberId,
                    image: member.profileImage,
                    title: member.name,
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  MemberPersonalDetailsSection(
                    dob: member.dob,
                    email: member.emailId,
                    gender: member.gender ?? '',
                    nationalId: member.nationalId,
                  ),
                  member.isInsurance && !member.isInsuranceExpired
                      ? MemberInsuranceSection(
                          insuranceName: member.insuranceName ?? '',
                          memberNo: member.memberNo ?? '',
                          expireDate: member.insuranceExpDttm,
                        )
                      : const SizedBox(
                          height: 21,
                        ),
                  member.memberDocs.isEmpty
                      ? const SizedBox()
                      : MemberDocumentsSection(
                          documents: member.memberDocs,
                        ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 1,
              color: AppColors.black.withOpacity(.25),
              offset: const Offset(0, 0))
        ]),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                backgroundColor: AppColors.vilot,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 15)),
            onPressed: () {
              InsuranceHelpers.insuranceCheackBoxNotifier.value = true;
              Navigator.of(context)
                  .pushNamed(RouteConstants.addMemberScreen, arguments: {
                'member': context
                    .read<UserBloc>()
                    .state
                    .user!
                    .members
                    .singleWhere((member) => member.id == memberId)
              });
            },
            child: Text(
              "Edit Insurance Details",
              style: AppTextStyles.largeSemiBoldRoboto
                  .copyWith(color: AppColors.white),
            )),
      ),
    );
  }
}
