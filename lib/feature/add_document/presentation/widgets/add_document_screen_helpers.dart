import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/image_picker_tile.dart';
import 'package:patient_portal/core/resources/dimens.dart';
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
      child: Text(member.name, style: AppTextStyles.largeRobotoNormal),
    );
  }

  static DropdownMenuItem<int> createDocumentTypeDropDownItem({
    required DocumentType document,
  }) {
    return DropdownMenuItem(
      value: document.idDocument,
      child: Text(
        document.documentType,
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
    final theme = Theme.of(context);
    return await showModalBottomSheet<PickedDocument>(
      context: context,
      backgroundColor: theme.colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(Dimens.constPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              AppStaticTexts.document,
              style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(24),
            Row(
              children: [
                Expanded(
                  child: ImagePickerTile(
                    title: AppStaticTexts.camera,
                    iconPath: Assets.icons.cameraIcon.path,
                    onPressed: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.camera,
                      );
                      if (image != null && context.mounted) {
                        Navigator.pop(
                          context,
                          PickedDocument(
                            file: File(image.path),
                            name: image.name,
                          ),
                        );
                      }
                    },
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: ImagePickerTile(
                    title: AppStaticTexts.files,
                    iconPath: Assets.icons.folderIcon.path,
                    onPressed: () async {
                      final value = await FilePicker.pickFiles(
                        type: FileType.custom,
                        allowMultiple: false,
                        allowedExtensions: ['jpg', 'png', 'pdf'],
                      );
                      if (value != null && context.mounted) {
                        Navigator.pop(
                          context,
                          PickedDocument(
                            file: File(value.files[0].path!),
                            name: value.files[0].name,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            const Gap(16),
          ],
        ),
      ),
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
