import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

import 'add_member_screen_helpers.dart';

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: AddMemberScreenHelpers.profileImageNotifier,
          builder: (context, file, child) {
            return Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorScheme.primary.withValues(alpha: 0.2),
                  width: 2,
                ),
                image: file != null
                    ? DecorationImage(image: FileImage(file), fit: BoxFit.cover)
                    : null,
              ),
              child: file == null
                  ? Center(
                      child: Icon(
                        Icons.person_rounded,
                        size: 40,
                        color: colorScheme.primary.withValues(alpha: 0.5),
                      ),
                    )
                  : null,
            );
          },
        ),
        const Gap(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStaticTexts.profilePicture,
                style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const Gap(4),
              Text(
                AppStaticTexts.uploadMemberPhoto,
                style: AppTextStyles.bodyTextRoboto.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const Gap(12),
              FilledButton.icon(
                onPressed: () =>
                    AddMemberScreenHelpers.pickImage(context: context),
                icon: const Icon(Icons.add_a_photo_rounded, size: 18),
                label: const Text(AppStaticTexts.addPhoto),
                style: FilledButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  minimumSize: const Size(0, 40),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
