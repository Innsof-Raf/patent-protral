import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/widgets/member_details_section.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/resources/common_widgets.dart/image_picker_tile.dart';
import 'package:patient_portal/resources/common_widgets.dart/insurance_form_scetion.dart';
import 'package:patient_portal/resources/dimens.dart';

class AddMemberScreenHelpers {
  static Future<DateTime?> getDob({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    DateTime? selectedDate;
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: AppColors.vilot),
          ),
        ),
        child: child!,
      ),
    );
    return selectedDate;
  }

  //show image picker bottom sheet
  static void pickImage({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(Dimens.constPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Profile photo',
              style: AppTextStyles.largeSemiBoldRoboto,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                ImagePickerTile(
                  title: 'Camera',
                  iconPath: 'assets/icons/camera_icon.svg',
                  onPressed: () async {
                    final image = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (image != null) {
                      AddMemberScreenHelpers.profileImageNotifer.value = File(
                        image.path,
                      );
                    }
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                ),
                const SizedBox(width: 15),
                ImagePickerTile(
                  title: 'Gallery',
                  iconPath: 'assets/icons/gallery_icon.svg',
                  onPressed: () async {
                    final image = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    if (image != null) {
                      AddMemberScreenHelpers.profileImageNotifer.value = File(
                        image.path,
                      );
                    }
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //value Notifier for profile Image
  static ValueNotifier<File?> profileImageNotifer = ValueNotifier<File?>(null);

  //edit memberInsurance Detail
  static void ediMemberInsuranceDetail({
    required BuildContext context,
    required int memberId,
  }) {
    final token = context.read<UserBloc>().state.user!.accessToken;
    if (InsuranceHelpers.selectedInsuranceNotifer.value == 0) {
      if (InsuranceFormSection.insuranceFormKey.currentState!.validate() &&
          InsuranceFormSection.insuranceNameFormKey.currentState!.validate()) {
        context.read<AddMemberBloc>().add(
          UpdateInsuranceAction(
            params: AddMemberParams.updateInsurance(
              memberId: memberId,
              idInsurance: InsuranceHelpers.selectedInsuranceNotifer.value!,
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
              idInsurance: InsuranceHelpers.selectedInsuranceNotifer.value!,
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

  //save member
  static void saveMember({required BuildContext context}) {
    final user = context.read<UserBloc>().state.user!;
    if (InsuranceHelpers.insuranceCheackBoxNotifier.value) {
      if (InsuranceHelpers.selectedInsuranceNotifer.value == 0) {
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
                idInsurance: InsuranceHelpers.selectedInsuranceNotifer.value,
                memberNumber: InsuranceFormSection.memberNumberController.text,
                otherInsuranceName:
                    InsuranceFormSection.insuranceNameController.text,
                profileImage: AddMemberScreenHelpers.profileImageNotifer.value,
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
                idInsurance: InsuranceHelpers.selectedInsuranceNotifer.value,
                memberNumber: InsuranceFormSection.memberNumberController.text,
                profileImage: AddMemberScreenHelpers.profileImageNotifer.value,
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
              profileImage: AddMemberScreenHelpers.profileImageNotifer.value,
            ),
          ),
        );
      }
    }
  }
}
