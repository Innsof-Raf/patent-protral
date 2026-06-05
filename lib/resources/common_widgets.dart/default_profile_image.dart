import 'package:flutter/material.dart';

import '../app_colors.dart';

class DefaultProfileImage extends StatelessWidget {
  const DefaultProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.dividerGrayColor,
      backgroundImage:
          AssetImage('assets/images/member_default_profile_image.png'),
    );
  }
}
