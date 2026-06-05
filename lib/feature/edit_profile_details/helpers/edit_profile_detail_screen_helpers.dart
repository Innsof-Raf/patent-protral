import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/common_widgets.dart/image_picker_tile.dart';
import '../../../resources/dimens.dart';

class EditProfileDetailScreenHelpers {
  static Future<DateTime?> getDob(
      {required DateTime initialDate, required BuildContext context}) async {
    DateTime? selectedDate;
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
              textButtonTheme: TextButtonThemeData(
                  style:
                      TextButton.styleFrom(foregroundColor: AppColors.vilot))),
          child: child!),
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
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ImagePickerTile(
                  title: 'Camera',
                  iconPath: 'assets/icons/camera_icon.svg',
                  onPressed: () async {
                    await ImagePicker()
                        .pickImage(source: ImageSource.camera)
                        .then((image) {
                      if (image != null) {
                        profileImage.value = File(image.path);
                        Navigator.pop(context);
                      }
                    });
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                ImagePickerTile(
                  title: 'Gallery',
                  iconPath: 'assets/icons/gallery_icon.svg',
                  onPressed: () async {
                    await ImagePicker()
                        .pickImage(source: ImageSource.gallery)
                        .then((image) {
                      if (image != null) {
                        profileImage.value = File(image.path);
                        Navigator.pop(context);
                      }
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  //value Notifier for profile Image
  static ValueNotifier<File?> profileImage = ValueNotifier<File?>(null);
  //value Notifier for gender Selection

}
