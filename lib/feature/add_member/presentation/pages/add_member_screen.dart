import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/add_member_screen_helpers.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/member_details_section.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/profile_image_section.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/models/member/member_model.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/resources/common_widgets.dart/insurance_form_scetion.dart';
import 'package:patient_portal/resources/common_widgets.dart/rounded_cheack_box.dart';
import 'package:patient_portal/resources/common_widgets.dart/succes_dailog.dart';
import 'package:patient_portal/resources/dimens.dart';

class AddMemberScreen extends StatelessWidget {
  final MemberModel? member;
  const AddMemberScreen({super.key, this.member});

  @override
  Widget build(BuildContext context) {
    if (member != null) {
      MemberDetailsSection.nameController.text = member!.name;
      MemberDetailsSection.nationalIdController.text = member!.nationalId;
      MemberDetailsSection.dob = member!.dob;
      MemberDetailsSection.emailController.text = member!.emailId ?? '';
    } else {
      MemberDetailsSection.nameController.text = '';
      MemberDetailsSection.nationalIdController.text = '';
      MemberDetailsSection.dob = null;
      MemberDetailsSection.emailController.text = '';
      AddMemberScreenHelpers.profileImageNotifer.value = null;
    }

    return Scaffold(
      extendBody: true,
      appBar: CommonAppbar(
        title: member == null ? 'Add Member' : 'Edit insurance Details',
      ),
      body: BlocListener<AddMemberBloc, AddMemberState>(
        listener: (context, state) {
          if (state.isMemberAddingFailed) {
            showDialog(
              context: context,
              builder: (context) => CommonErrorAlert(
                content:
                    '${member == null ? 'Member Adding' : 'Insurance Update'} failed\n${state.error.message}',
              ),
            );
          } else if (state.isMemberAddingSuccess) {
            if (member == null) {
              context.read<UserBloc>().add(AddMemberToLocal(state.newMember!));
            } else {
              context.read<UserBloc>().add(
                UpdateMemberInLocal(state.newMember!),
              );
            }
            showDialog(
              context: context,
              builder: (context) => SucessDialog(
                title: member == null
                    ? 'Your Member has been\nadded Sucessfully.'
                    : 'Your Member insurance has been\nupdated Sucessfully.',
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  Navigator.pop(context); // Go back
                },
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 15),
              member == null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProfileImageSection(),
                        const MemberDetailsSection(),
                        ValueListenableBuilder(
                          valueListenable:
                              InsuranceHelpers.insuranceCheackBoxNotifier,
                          builder: (context, value, child) =>
                              RoundedCheackBoxTile(
                                isSelected: value,
                                onChanged: () {
                                  InsuranceHelpers
                                          .insuranceCheackBoxNotifier
                                          .value =
                                      !value;
                                },
                                title: 'I have insurance',
                              ),
                        ),
                      ],
                    )
                  : const SizedBox(),
              ValueListenableBuilder(
                valueListenable: InsuranceHelpers.insuranceCheackBoxNotifier,
                builder: (context, value, child) => value
                    ? InsuranceFormSection(
                        idInsurance: member?.insuranceId,
                        insuranceName:
                            member != null && member!.insuranceId == 0
                            ? member!.insuranceName
                            : null,
                        memberInsuranvceExpireDate: member?.insuranceExpDttm,
                        memberNumber: member?.memberNo,
                      )
                    : const SizedBox(height: 55),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 16),
        child: BlocBuilder<AddMemberBloc, AddMemberState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.vilot,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: AppColors.black.withValues(alpha: .25),
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(6),
              ),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  backgroundColor: AppColors.vilot,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.all(15),
                ),
                onPressed: state.isMemberAdding
                    ? null
                    : () {
                        if (member != null) {
                          AddMemberScreenHelpers.ediMemberInsuranceDetail(
                            context: context,
                            memberId: member!.id,
                          );
                        } else {
                          AddMemberScreenHelpers.saveMember(context: context);
                        }
                      },
                child: state.isMemberAdding
                    ? const CircularProgressIndicator(color: AppColors.white)
                    : Text(
                        member == null ? 'Done' : 'Update',
                        style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                          color: AppColors.white,
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
