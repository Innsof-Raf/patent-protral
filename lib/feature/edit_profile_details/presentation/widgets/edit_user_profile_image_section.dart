import 'dart:io';

import 'package:flutter/material.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_section_card.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class EditUserProfileImageSection extends StatelessWidget {
  const EditUserProfileImageSection({super.key, required this.image});

  final String? image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return EditProfileSectionCard(
      child: Row(
        children: [
          ValueListenableBuilder<File?>(
            valueListenable: EditProfileDetailScreenHelpers.profileImage,
            builder: (context, value, child) {
              return _EditableProfileImage(image: image, localImage: value);
            },
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile photo',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Upload a clear photo for easier identification.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton.filledTonal(
            tooltip: 'Change photo',
            onPressed: () {
              EditProfileDetailScreenHelpers.pickImage(context: context);
            },
            icon: const Icon(Icons.photo_camera_outlined),
          ),
        ],
      ),
    );
  }
}

class _EditableProfileImage extends StatelessWidget {
  const _EditableProfileImage({required this.image, required this.localImage});

  final String? image;
  final File? localImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pickedImage = localImage;

    ImageProvider provider;
    if (pickedImage != null) {
      provider = FileImage(pickedImage);
    } else if (image != null) {
      provider = NetworkImage(image!);
    } else {
      provider = AssetImage(Assets.images.memberDefaultProfileImage.path);
    }

    return Container(
      width: 74,
      height: 74,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.primaryContainer.withValues(alpha: .46),
      ),
      child: CircleAvatar(
        backgroundColor: theme.colorScheme.surfaceContainerHighest,
        backgroundImage: provider,
      ),
    );
  }
}
