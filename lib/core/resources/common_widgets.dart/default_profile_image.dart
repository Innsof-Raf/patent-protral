import 'package:flutter/material.dart';
import 'package:patient_portal/gen/assets.gen.dart';

import '../app_colors.dart';

class DefaultProfileImage extends StatelessWidget {
  const DefaultProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.dividerGrayColor,
      backgroundImage: AssetImage(Assets.images.memberDefaultProfileImage.path),
    );
  }
}
