import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class EditUserProfileImageSection extends StatelessWidget {
  final String? image;
  const EditUserProfileImageSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    EditProfileDetailScreenHelpers.profileImage.value = null;
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: EditProfileDetailScreenHelpers.profileImage,
          builder: (context, value, child) => value != null
              ? CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.dividerGrayColor,
                  backgroundImage: FileImage(value),
                )
              : image != null
              ? CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.dividerGrayColor,
                  backgroundImage: NetworkImage(image!),
                )
              : CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.dividerGrayColor,
                  backgroundImage: AssetImage(
                    Assets.images.memberDefaultProfileImage.path,
                  ),
                ),
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
            EditProfileDetailScreenHelpers.pickImage(context: context);
          },
          child: SvgPicture.asset(Assets.icons.cameraIcon.path),
        ),
      ],
    );
  }
}
