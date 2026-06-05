import 'package:flutter/material.dart';
import 'package:patient_portal/resources/app_colors.dart';

import '../../../resources/app_text_styles.dart';
import '../../../resources/common_widgets.dart/default_profile_image.dart';
import '../../../resources/dimens.dart';
import '../../../resources/helpers.dart';
import '../../../resources/urls.dart';

class MemberProfileImageSection extends StatelessWidget {
  final int memberId;
  final String title;
  final String? image;
  const MemberProfileImageSection({
    Key? key,
    required this.title,
    required this.image,
    required this.memberId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            image == null
                ? CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColors.orange,
                    child: Text(
                      title[0],
                      style: AppTextStyles.subHeaddingSemiBoldRoboto
                          .copyWith(fontSize: 18, color: AppColors.white),
                    ),
                  )
                : ClipOval(
                    child: image == null
                        ? const DefaultProfileImage()
                        : Image.network(
                            '${ConstantUrls.memberImageUrl}/$memberId/$image',
                            fit: BoxFit.fill,
                            loadingBuilder: (context, child, loadingProgress) =>
                                AppHelpers.imageLoadingIndicator(
                                    context, child, loadingProgress),
                            errorBuilder: (context, error, stackTrace) =>
                                const DefaultProfileImage(),
                            height: 44,
                            width: 44,
                          ),
                  ),
            Dimens.constWidth10,
            Flexible(
              child: Text(
                title,
                style: AppTextStyles.subHeaddingSemiBoldRoboto,
              ),
            )
          ],
        ),
      ],
    );
  }
}
