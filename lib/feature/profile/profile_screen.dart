import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/dimens.dart';
import 'widgets/member_section.dart';
import '../main_screen/widgets/profile_app_bar.dart';
import 'widgets/my_profile_section.dart';
import 'widgets/quick_menus_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
