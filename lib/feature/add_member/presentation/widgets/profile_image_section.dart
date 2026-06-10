import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/default_profile_image.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'add_member_screen_helpers.dart';

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    AddMemberScreenHelpers.profileImageNotifer.value = null;

    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: AddMemberScreenHelpers.profileImageNotifer,
          builder: (context, value, child) => value != null
              ? CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.dividerGrayColor,
                  backgroundImage: FileImage(value),
                )
              : const DefaultProfileImage(),
        ),
        Dimens.constWidth10,
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Add photo', style: AppTextStyles.subHeaddingSemiBoldRoboto),
            Text('Min size 1 mb', style: AppTextStyles.bodyTextRoboto),
          ],
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: AppColors.dividerGrayColor,
            padding: const EdgeInsets.all(12),
            minimumSize: const Size(0, 0),
          ),
          onPressed: () {
            AddMemberScreenHelpers.pickImage(context: context);
          },
          child: SvgPicture.asset('assets/icons/camera_icon.svg'),
        ),
      ],
    );
  }
}
