import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/image_picker_tile.dart';

class PickerSheetAction<T> {
  const PickerSheetAction({
    required this.title,
    required this.iconPath,
    required this.onPressed,
  });

  final String title;
  final String iconPath;
  final Future<T?> Function() onPressed;
}

class ImagePickerHelpers {
  static Future<File?> pickImage({
    required BuildContext context,
    String title = AppStaticTexts.uploadProfilePhoto,
    String subtitle = AppStaticTexts.selectImageSource,
  }) async {
    return showPickerSheet<File>(
      context: context,
      title: title,
      subtitle: subtitle,
      actions: [
        PickerSheetAction<File>(
          title: AppStaticTexts.camera,
          iconPath: Assets.icons.cameraIcon.path,
          onPressed: () => pickImageFromSource(source: ImageSource.camera),
        ),
        PickerSheetAction<File>(
          title: AppStaticTexts.gallery,
          iconPath: Assets.icons.galleryIcon.path,
          onPressed: () => pickImageFromSource(source: ImageSource.gallery),
        ),
      ],
    );
  }

  static Future<T?> showPickerSheet<T>({
    required BuildContext context,
    required String title,
    required String subtitle,
    required List<PickerSheetAction<T>> actions,
  }) async {
    final theme = Theme.of(context);

    return showModalBottomSheet<T>(
      context: context,
      showDragHandle: true,
      backgroundColor: theme.colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(16),
            Row(
              children: [
                for (int index = 0; index < actions.length; index++) ...[
                  Expanded(
                    child: ImagePickerTile(
                      title: actions[index].title,
                      iconPath: actions[index].iconPath,
                      onPressed: () async {
                        final result = await actions[index].onPressed();
                        if (result != null && bottomSheetContext.mounted) {
                          Navigator.pop(bottomSheetContext, result);
                        }
                      },
                    ),
                  ),
                  if (index != actions.length - 1) const Gap(15),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Future<File?> pickImageFromSource({
    required ImageSource source,
  }) async {
    final XFile? image = await ImagePicker().pickImage(source: source);
    return image != null ? File(image.path) : null;
  }
}
