import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_screen_appbar.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_documents_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_insurance_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_personal_details_section.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_profile_image_section.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/gen/assets.gen.dart';

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
    return Scaffold(
      appBar: const MemberDetailsScreenAppbar(),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.isFetchingMemberDetail) {
            return LayoutBuilder(
              builder: (context, constraints) => Center(
                child: Image.asset(
                  Assets.gifImages.ripple02.path,
                  width: constraints.maxWidth * .3,
                ),
              ),
            );
          } else if (state.isMemberDetailFetchingFailed) {
            return Center(
              child: Text(
                state.error.message,
                style: AppTextStyles.largeRobotoNormal,
              ),
            );
          } else {
            final Member member = state.user!.members.singleWhere(
              (element) => element.id == widget.memberId,
            );

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                padding: const EdgeInsets.only(bottom: 55),
                children: [
                  MemberProfileImageSection(
                    memberId: widget.memberId,
                    image: member.profileImage,
                    title: member.name,
                  ),
                  const SizedBox(height: 23),
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
                      : const SizedBox(height: 21),
                  member.memberDocs.isEmpty
                      ? const SizedBox.shrink()
                      : MemberDocumentsSection(documents: member.memberDocs),
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
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: AppColors.black.withValues(alpha: .25),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
            backgroundColor: AppColors.vilot,
            foregroundColor: AppColors.white,
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          onPressed: () {
            InsuranceHelpers.insuranceCheackBoxNotifier.value = true;
            context.router.push(
              AddMemberRoute(
                member: context
                    .read<UserBloc>()
                    .state
                    .user!
                    .members
                    .singleWhere((member) => member.id == widget.memberId),
              ),
            );
          },
          child: Text(
            "Edit Insurance Details",
            style: AppTextStyles.largeSemiBoldRoboto.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
