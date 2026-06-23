import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/image_picker_helpers.dart';
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

  static Future<void> pickImage({required BuildContext context}) async {
    final image = await ImagePickerHelpers.pickImage(context: context);
    if (image != null) {
      profileImageNotifier.value = image;
    }
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
