import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/insurance_form_section.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/member_details_section.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class AddMemberScreenHelpers {
  static Future<DateTime?> getDob({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) => child!,
    );
  }

  static void pickImage({required BuildContext context}) {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStaticTexts.uploadProfilePhoto,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(8),
              Text(
                AppStaticTexts.selectImageSource,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const Gap(24),
              Row(
                children: [
                  Expanded(
                    child: _buildImageSourceTile(
                      context,
                      title: AppStaticTexts.camera,
                      icon: Icons.camera_alt_rounded,
                      source: ImageSource.camera,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const Gap(16),
                  Expanded(
                    child: _buildImageSourceTile(
                      context,
                      title: AppStaticTexts.gallery,
                      icon: Icons.photo_library_rounded,
                      source: ImageSource.gallery,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildImageSourceTile(
    BuildContext context, {
    required String title,
    required IconData icon,
    required ImageSource source,
    required Color color,
  }) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () async {
        final image = await ImagePicker().pickImage(source: source);
        if (image != null) {
          profileImageNotifier.value = File(image.path);
        }
        if (context.mounted) Navigator.pop(context);
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.colorScheme.outlineVariant),
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: color),
            const Gap(8),
            Text(title, style: theme.textTheme.labelLarge),
          ],
        ),
      ),
    );
  }

  static ValueNotifier<File?> profileImageNotifier = ValueNotifier<File?>(null);

  static void ediMemberInsuranceDetail({
    required BuildContext context,
    required int memberId,
  }) {
    final token = context.read<UserBloc>().state.user!.accessToken;
    final idInsurance = InsuranceHelpers.selectedInsuranceNotifier.value!;

    if (idInsurance == 0) {
      if (InsuranceFormSection.insuranceFormKey.currentState!.validate() &&
          InsuranceFormSection.insuranceNameFormKey.currentState!.validate()) {
        context.read<AddMemberBloc>().add(
          UpdateInsuranceAction(
            params: AddMemberParams.updateInsurance(
              memberId: memberId,
              idInsurance: idInsurance,
              insuranceName: InsuranceFormSection.insuranceNameController.text,
              memberNumber: InsuranceFormSection.memberNumberController.text,
              expireDate: InsuranceFormSection.expireDate!,
              token: token,
            ),
          ),
        );
      }
    } else {
      if (InsuranceFormSection.insuranceFormKey.currentState!.validate()) {
        context.read<AddMemberBloc>().add(
          UpdateInsuranceAction(
            params: AddMemberParams.updateInsurance(
              memberId: memberId,
              idInsurance: idInsurance,
              insuranceName: null,
              memberNumber: InsuranceFormSection.memberNumberController.text,
              expireDate: InsuranceFormSection.expireDate!,
              token: token,
            ),
          ),
        );
      }
    }
  }

  static void saveMember({required BuildContext context}) {
    final user = context.read<UserBloc>().state.user!;
    final hasInsurance = InsuranceHelpers.insuranceCheckBoxNotifier.value;

    if (hasInsurance) {
      final idInsurance = InsuranceHelpers.selectedInsuranceNotifier.value;
      if (idInsurance == 0) {
        if (MemberDetailsSection.memberFormKey.currentState!.validate() &&
            InsuranceFormSection.insuranceFormKey.currentState!.validate() &&
            InsuranceFormSection.insuranceNameFormKey.currentState!
                .validate()) {
          context.read<AddMemberBloc>().add(
            AddMemberAction(
              params: AddMemberParams.addMember(
                accessToken: user.accessToken,
                mobileNumber: user.mobileNumber,
                patientName: MemberDetailsSection.nameController.text,
                nationalId: MemberDetailsSection.nationalIdController.text,
                gender: GenderFormHelpers.genderNotifier.value,
                dob: MemberDetailsSection.dob!,
                email: MemberDetailsSection.emailController.text,
                expireDate: InsuranceFormSection.expireDate!,
                idInsurance: idInsurance!,
                memberNumber: InsuranceFormSection.memberNumberController.text,
                otherInsuranceName:
                    InsuranceFormSection.insuranceNameController.text,
                profileImage: profileImageNotifier.value,
              ),
            ),
          );
        }
      } else {
        if (MemberDetailsSection.memberFormKey.currentState!.validate() &&
            InsuranceFormSection.insuranceFormKey.currentState!.validate()) {
          context.read<AddMemberBloc>().add(
            AddMemberAction(
              params: AddMemberParams.addMember(
                accessToken: user.accessToken,
                mobileNumber: user.mobileNumber,
                patientName: MemberDetailsSection.nameController.text,
                nationalId: MemberDetailsSection.nationalIdController.text,
                gender: GenderFormHelpers.genderNotifier.value,
                dob: MemberDetailsSection.dob!,
                email: MemberDetailsSection.emailController.text,
                expireDate: InsuranceFormSection.expireDate!,
                idInsurance: idInsurance!,
                memberNumber: InsuranceFormSection.memberNumberController.text,
                profileImage: profileImageNotifier.value,
              ),
            ),
          );
        }
      }
    } else {
      if (MemberDetailsSection.memberFormKey.currentState!.validate()) {
        context.read<AddMemberBloc>().add(
          AddMemberAction(
            params: AddMemberParams.addMember(
              accessToken: user.accessToken,
              mobileNumber: user.mobileNumber,
              patientName: MemberDetailsSection.nameController.text,
              nationalId: MemberDetailsSection.nationalIdController.text,
              gender: GenderFormHelpers.genderNotifier.value,
              dob: MemberDetailsSection.dob!,
              email: MemberDetailsSection.emailController.text,
              profileImage: profileImageNotifier.value,
            ),
          ),
        );
      }
    }
  }
}
