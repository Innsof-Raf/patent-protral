import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/insurance_form_section.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/success_dialog.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/add_member_screen_helpers.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/member_details_section.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/profile_image_section.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';

@RoutePage(name: 'AddMemberRoute')
class AddMemberScreen extends StatefulWidget {
  final Member? member;
  const AddMemberScreen({super.key, this.member});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    if (widget.member != null) {
      MemberDetailsSection.nameController.text = widget.member!.name;
      MemberDetailsSection.nationalIdController.text =
          widget.member!.nationalId;
      MemberDetailsSection.dob = widget.member!.dob;
      MemberDetailsSection.emailController.text = widget.member!.emailId ?? '';
    } else {
      MemberDetailsSection.nameController.text = '';
      MemberDetailsSection.nationalIdController.text = '';
      MemberDetailsSection.dob = null;
      MemberDetailsSection.emailController.text = '';
      AddMemberScreenHelpers.profileImageNotifier.value = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: CommonAppbar(
        title: widget.member == null
            ? AppStaticTexts.addMember
            : AppStaticTexts.editInsuranceDetails,
      ),
      body: BlocListener<AddMemberBloc, AddMemberState>(
        listener: (context, state) {
          if (state.isMemberAddingFailed) {
            showDialog(
              context: context,
              builder: (context) => CommonErrorAlert(
                content:
                    '${widget.member == null ? AppStaticTexts.memberAddingFailed : AppStaticTexts.insuranceUpdateFailed}\n${state.error.message}',
              ),
            );
          } else if (state.isMemberAddingSuccess) {
            _onSuccess(state.newMember!);
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (widget.member == null) ...[
                ProfileSectionCard(
                  child: Column(
                    children: [
                      ProfileImageSection(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Divider(),
                      ),
                      const MemberDetailsSection(),
                    ],
                  ),
                ),
                const Gap(16),
                _buildInsuranceToggle(colorScheme),
              ],
              ValueListenableBuilder(
                valueListenable: InsuranceHelpers.insuranceCheckBoxNotifier,
                builder: (context, hasInsurance, child) {
                  if (!hasInsurance) return const Gap(100);
                  return Column(
                    children: [
                      const Gap(16),
                      ProfileSectionCard(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStaticTexts.insuranceInformation,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary,
                              ),
                            ),
                            const Gap(8),
                            InsuranceFormSection(
                              idInsurance: widget.member?.insuranceId,
                              insuranceName:
                                  widget.member != null &&
                                      widget.member!.insuranceId == 0
                                  ? widget.member!.insuranceName
                                  : null,
                              memberInsuranceExpireDate:
                                  widget.member?.insuranceExpDttm,
                              memberNumber: widget.member?.memberNo,
                            ),
                          ],
                        ),
                      ),
                      const Gap(100),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomAction(theme),
    );
  }

  Widget _buildInsuranceToggle(ColorScheme colorScheme) {
    final theme = Theme.of(context);
    return ValueListenableBuilder(
      valueListenable: InsuranceHelpers.insuranceCheckBoxNotifier,
      builder: (context, value, child) => InkWell(
        onTap: () => InsuranceHelpers.insuranceCheckBoxNotifier.value = !value,
        borderRadius: BorderRadius.circular(16),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: value
                ? colorScheme.primary.withValues(alpha: 0.1)
                : colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: value
                  ? colorScheme.primary
                  : colorScheme.outlineVariant.withValues(alpha: 0.5),
              width: value ? 2 : 1.2,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: value ? colorScheme.primary : Colors.transparent,
                  border: Border.all(
                    color: value ? colorScheme.primary : colorScheme.outline,
                    width: 2,
                  ),
                ),
                child: value
                    ? const Icon(Icons.check, size: 16, color: Colors.white)
                    : null,
              ),
              const Gap(12),
              Text(
                AppStaticTexts.iHaveInsurance,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: value ? FontWeight.bold : FontWeight.normal,
                  color: value ? colorScheme.primary : colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomAction(ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: BlocBuilder<AddMemberBloc, AddMemberState>(
            builder: (context, state) {
              return FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: theme.colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: state.isMemberAdding ? null : _onActionPressed,
                child: state.isMemberAdding
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                    : Text(
                        widget.member == null
                            ? AppStaticTexts.saveMember
                            : AppStaticTexts.updateDetails,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onActionPressed() {
    if (widget.member != null) {
      AddMemberScreenHelpers.ediMemberInsuranceDetail(
        context: context,
        memberId: widget.member!.id,
      );
    } else {
      AddMemberScreenHelpers.saveMember(context: context);
    }
  }

  void _onSuccess(Member newMember) {
    final userBloc = context.read<UserBloc>();
    if (widget.member == null) {
      userBloc.add(
        AddMemberToLocal(
          params: ProfileParams.addMemberToLocal(member: newMember),
        ),
      );
    } else {
      userBloc.add(
        UpdateMemberInLocal(
          params: ProfileParams.updateMemberInLocal(member: newMember),
        ),
      );
    }
    showDialog(
      context: context,
      builder: (context) => SuccessDialog(
        title: widget.member == null
            ? AppStaticTexts.memberAddedSuccessfully
            : AppStaticTexts.insuranceDetailsUpdatedSuccessfully,
        onPressed: () {
          Navigator.pop(context); // Close dialog
          context.router.back(); // Go back
        },
      ),
    );
  }
}
