import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/image_picker_tile.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';
import 'package:patient_portal/feature/add_document/presentation/pages/add_document_screen.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class AddDocumentScreenHelpers {
  static DropdownMenuItem<int> createMemberDropDownItem({
    required Member member,
  }) {
    return DropdownMenuItem(
      value: member.id,
      child: Text(member.name, style: AppTextStyles.textFormFieldStyle),
    );
  }

  static DropdownMenuItem<int> createDocumentTypeDropDownItem({
    required DocumentType document,
  }) {
    return DropdownMenuItem(
      value: document.idDocument,
      child: Text(
        document.documentType,
        style: AppTextStyles.textFormFieldStyle,
      ),
    );
  }

  static Future<DateTime?> getExpireDate({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    DateTime? selectedDate;
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().add(const Duration(days: 1)),
      lastDate: DateTime(2050),
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

  static void pickDocument({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(Dimens.constPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Document', style: AppTextStyles.largeSemiBoldRoboto),
            const SizedBox(height: 15),
            Row(
              children: [
                ImagePickerTile(
                  title: 'Camera',
                  iconPath: Assets.icons.cameraIcon.path,
                  onPressed: () async {
                    final image = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (image != null && context.mounted) {
                      AddDocumentScreen.selectedDocument = File(image.path);
                      AddDocumentScreen.documentNameController.text =
                          image.name;
                      Navigator.pop(context);
                    }
                  },
                ),
                const SizedBox(width: 15),
                ImagePickerTile(
                  title: 'Files',
                  iconPath: Assets.icons.folderIcon.path,
                  onPressed: () async {
                    final value = await FilePicker.pickFiles(
                      type: FileType.custom,
                      allowMultiple: false,
                      allowedExtensions: ['jpg', 'png', 'pdf'],
                    );
                    if (value != null) {
                      AddDocumentScreen.selectedDocument = File(
                        value.files[0].path!,
                      );
                      AddDocumentScreen.documentNameController.text =
                          value.files[0].name;
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

  static String? validateDocumentType({required int? value}) {
    if (value == null || AddDocumentScreen.selectedDocumentType == null) {
      return 'Select documentType';
    } else {
      return null;
    }
  }

  static String? validateSelectedMember({required int? value}) {
    if (value == null || AddDocumentScreen.selectedMember == null) {
      return 'Select member';
    } else {
      return null;
    }
  }

  static String? validateExpireDate({required String? value}) {
    if (value == null || AddDocumentScreen.expireDate == null) {
      return 'Select expireDate';
    } else {
      return null;
    }
  }

  static String? validateSelectedDocument({required String? value}) {
    if (value == null || AddDocumentScreen.selectedDocument == null) {
      return 'Select document to upload';
    } else {
      return null;
    }
  }
}
