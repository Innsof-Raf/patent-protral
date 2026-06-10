import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/default_profile_image.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/core/resources/helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';

class MemberProfileImageSection extends StatelessWidget {
  final int memberId;
  final String title;
  final String? image;

  const MemberProfileImageSection({
    super.key,
    required this.title,
    required this.image,
    required this.memberId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            image == null
                ? CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColors.orange,
                    child: Text(
                      title[0],
                      style: AppTextStyles.subHeaddingSemiBoldRoboto.copyWith(
                        fontSize: 18,
                        color: AppColors.white,
                      ),
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
                                  context,
                                  child,
                                  loadingProgress,
                                ),
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
            ),
          ],
        ),
      ],
    );
  }
}
