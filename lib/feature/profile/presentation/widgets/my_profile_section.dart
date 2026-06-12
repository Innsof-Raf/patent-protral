import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/helpers.dart';
import 'package:patient_portal/core/route/app_router.dart';

class ProfileDetailsSection extends StatelessWidget {
  const ProfileDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg",
                        height: 62,
                        fit: BoxFit.fill,
                        width: 62,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            'assets/images/member_default_profile_image.png',
                            height: 62,
                            width: 62,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) =>
                            AppHelpers.imageLoadingIndicator(
                              context,
                              child,
                              loadingProgress,
                            ),
                      ),
                    ),
                    Positioned(
                      bottom: -8,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/female_gender_icon.svg",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Anzil Alphones",
                        style: AppTextStyles.subHeaddingSemiBoldRoboto,
                      ),
                      Text(
                        "Age : 32  | National ID : 08923739 ",
                        style: AppTextStyles.bodySmallInterNormal,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "anzilalphonse@gmail.com",
                          style: AppTextStyles.bodyTextInterSemibold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(20),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: const Size(0, 0),
                  backgroundColor: AppColors.vilot,
                  foregroundColor: AppColors.white,
                ),
                onPressed: () {
                  context.router.push(const EditProfileDetailsRoute());
                },
                child: Text(
                  "EDIT PROFILE",
                  style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
