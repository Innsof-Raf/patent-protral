import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/image_picker_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_details_section.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class EditProfileDetailScreenHelpers {
  static Future<DateTime?> getDob({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    DateTime? selectedDate;
    final theme = Theme.of(context);
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: theme.colorScheme.primary,
            ),
          ),
        ),
        child: child!,
      ),
    );
    return selectedDate;
  }

  static Future<void> pickImage({required BuildContext context}) async {
    final image = await ImagePickerHelpers.pickImage(
      context: context,
      title: 'Profile photo',
      subtitle: 'Choose a source for your new profile image.',
    );
    if (image != null) {
      profileImage.value = image;
    }
  }

  //value Notifier for profile Image
  static ValueNotifier<File?> profileImage = ValueNotifier<File?>(null);

  static void saveProfile({required BuildContext context}) {
    final formState = EditProfileDetailsSection.profileFormKey.currentState;
    if (formState == null || !formState.validate()) return;

    final user = context.read<UserBloc>().state.user;
    final dob = EditProfileDetailsSection.dob;
    if (user == null || dob == null) return;

    context.read<UserBloc>().add(
      AddMember(
        params: ProfileParams.addMember(
          patientName: EditProfileDetailsSection.nameController.text.trim(),
          nationalId: EditProfileDetailsSection.nationalIdController.text
              .trim(),
          email: user.emailId,
          mobileNumber: EditProfileDetailsSection.phoneController.text.trim(),
          gender: GenderFormHelpers.genderNotifier.value,
          dob: dob,
          profileImage: profileImage.value,
        ),
      ),
    );
  }
}
