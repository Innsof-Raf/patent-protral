import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_section_card.dart';

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
                  context.lang.profilePhoto,
                  style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  context.lang.uploadProfilePhotoSubtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodyTextRoboto.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton.filledTonal(
            tooltip: context.lang.changePhoto,
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

    Widget content;
    if (pickedImage != null) {
      content = Image.file(pickedImage, fit: BoxFit.cover);
    } else if (image != null) {
      content = CachedNetworkImage(
        imageUrl: image!,
        fit: BoxFit.cover,
        placeholder: CommonNetworkImage.placeholder,
        errorWidget: CommonNetworkImage.errorWidget,
      );
    } else {
      content = Image.asset(
        Assets.images.memberDefaultProfileImage.path,
        fit: BoxFit.cover,
      );
    }

    return Container(
      width: 74,
      height: 74,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.primaryContainer.withValues(alpha: .46),
      ),
      child: ClipOval(child: content),
    );
  }
}
