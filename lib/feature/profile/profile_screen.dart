import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_profile/widgets/member_section.dart';
import 'package:patient_portal/feature/profile/widgets/my_profile_section.dart';

import '../../resources/app_colors.dart';
import '../../resources/dimens.dart';
import 'widgets/quick_menus_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ProfileDetailsSection(),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.dividerGrayColor,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuickMenuSection(),
          ),
          Dimens.constHeight,
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MemberSection(),
            ),
          ),
        ],
      ),
    );
  }
}
