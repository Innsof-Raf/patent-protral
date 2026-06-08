import 'package:flutter/material.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../resources/dimens.dart';
import '../../route/route_constants.dart';
import 'widgets/edit_profile_details_section.dart';
import 'widgets/edit_user_profile_image_section.dart';

class EditProfileDetailsScreen extends StatelessWidget {
  const EditProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CommonAppbar(title: 'Profile Details'),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 16),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: const [
            SizedBox(height: 15),
            EditUserProfileImageSection(image: null),
            EditProfileDetailsSection(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: AppColors.black.withValues(alpha: .25),
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
            backgroundColor: AppColors.vilot,
            foregroundColor: AppColors.white,
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              RouteConstants.myProfileScreen,
            );
          },
          child: Text(
            "NEXT",
            style: AppTextStyles.largeSemiBoldRoboto.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
