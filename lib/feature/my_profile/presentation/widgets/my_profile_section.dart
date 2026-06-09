import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class MyProfileSection extends StatelessWidget {
  const MyProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        "",
                        height: 62,
                        width: 62,
                        errorBuilder: (context, error, stackTrace) {
                          return ClipRRect(
                            child: Image.asset(
                              //  'assets/images/image_loading_failed_image.png',
                              'assets/images/male_profile.png',
                              height: 62,
                              width: 62,
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: LinearProgressIndicator(
                              color: AppColors.vilot,
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: -8,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/images/Female.svg",
                            height: 12,
                            width: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Anzil Alphones",
                  style: AppTextStyles.subHeaddingSemiBoldRoboto,
                ),
                Text(
                  "Age : 32  | National ID : 08923739 ",
                  style: AppTextStyles.subHeadingInter,
                ),
                Text(
                  "anzilalphonse@gmail.com",
                  style: AppTextStyles.subHeadingInter2,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.vilot,
            foregroundColor: AppColors.white,
          ),
          onPressed: () {},
          child: Text(
            "EDIT PROFILE",
            style: AppTextStyles.bodyLargeRobotoBold.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
