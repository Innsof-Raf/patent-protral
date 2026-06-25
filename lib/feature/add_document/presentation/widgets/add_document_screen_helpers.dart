import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/image_picker_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class PickedDocument {
  final File file;
  final String name;

  PickedDocument({required this.file, required this.name});
}

class AddDocumentScreenHelpers {
  static DropdownMenuItem<int> createMemberDropDownItem({
    required Member member,
  }) {
    return DropdownMenuItem(
      value: member.id,
      child: Text(
        member.name.trim().isEmpty
            ? AppStaticTexts.unknown
            : member.name.toTitleCase(),
        style: AppTextStyles.largeRobotoNormal,
      ),
    );
  }

  static DropdownMenuItem<int> createDocumentTypeDropDownItem({
    required DocumentType document,
  }) {
    return DropdownMenuItem(
      value: document.idDocument,
      child: Text(
        document.documentType.toTitleCase(),
        style: AppTextStyles.largeRobotoNormal,
      ),
    );
  }

  static Future<DateTime?> getExpireDate({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    final theme = Theme.of(context);
    return await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().add(const Duration(days: 1)),
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: theme.colorScheme.primary,
            onPrimary: theme.colorScheme.onPrimary,
            surface: theme.colorScheme.surface,
            onSurface: theme.colorScheme.onSurface,
          ),
        ),
        child: child!,
      ),
    );
  }

  static Future<PickedDocument?> pickDocument({
    required BuildContext context,
  }) async {
    return await ImagePickerHelpers.showPickerSheet<PickedDocument>(
      context: context,
      title: AppStaticTexts.document,
      subtitle: AppStaticTexts.selectImageSource,
      actions: [
        PickerSheetAction<PickedDocument>(
          title: AppStaticTexts.camera,
          iconPath: Assets.icons.cameraIcon.path,
          onPressed: () async {
            final image = await ImagePickerHelpers.pickImageFromSource(
              source: ImageSource.camera,
            );
            return image != null
                ? PickedDocument(
                    file: image,
                    name: image.path.split(Platform.pathSeparator).last,
                  )
                : null;
          },
        ),
        PickerSheetAction<PickedDocument>(
          title: AppStaticTexts.files,
          iconPath: Assets.icons.folderIcon.path,
          onPressed: () async {
            final value = await FilePicker.pickFiles(
              type: FileType.custom,
              allowMultiple: false,
              allowedExtensions: ['jpg', 'png', 'pdf'],
            );
            final filePath = value?.files.single.path;
            if (filePath == null) return null;
            return PickedDocument(
              file: File(filePath),
              name: value!.files.single.name,
            );
          },
        ),
      ],
    );
  }

  static String? validateDocumentType({
    required int? value,
    required int? selectedDocumentType,
  }) {
    if (value == null || selectedDocumentType == null) {
      return AppStaticTexts.selectDocumentType;
    } else {
      return null;
    }
  }

  static String? validateSelectedMember({
    required int? value,
    required int? selectedMember,
  }) {
    if (value == null || selectedMember == null) {
      return AppStaticTexts.selectMember;
    } else {
      return null;
    }
  }

  static String? validateExpireDate({
    required String? value,
    required DateTime? expireDate,
  }) {
    if (value == null || value.isEmpty || expireDate == null) {
      return AppStaticTexts.selectExpireDate;
    } else {
      return null;
    }
  }

  static String? validateSelectedDocument({
    required String? value,
    required File? selectedDocument,
  }) {
    if (value == null || value.isEmpty || selectedDocument == null) {
      return AppStaticTexts.selectDocumentToUpload;
    } else {
      return null;
    }
  }
}
