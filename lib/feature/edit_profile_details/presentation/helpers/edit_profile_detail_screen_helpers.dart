import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/image_picker_tile.dart';
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

  //show image picker bottom sheet
  static void pickImage({required BuildContext context}) {
    final theme = Theme.of(context);

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: theme.colorScheme.surface,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Profile photo',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Choose a source for your new profile image.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ImagePickerTile(
                  title: 'Camera',
                  iconPath: Assets.icons.cameraIcon.path,
                  onPressed: () async {
                    final XFile? image = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (image != null) {
                      profileImage.value = File(image.path);
                      if (context.mounted) Navigator.pop(context);
                    }
                  },
                ),
                const SizedBox(width: 15),
                ImagePickerTile(
                  title: 'Gallery',
                  iconPath: Assets.icons.galleryIcon.path,
                  onPressed: () async {
                    final XFile? image = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    if (image != null) {
                      profileImage.value = File(image.path);
                      if (context.mounted) Navigator.pop(context);
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
