import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class DoctorDetailScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const DoctorDetailScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.vilot,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: AppColors.vilot,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Doctor',
        style: AppTextStyles.largeSemiBoldRoboto.copyWith(
          color: AppColors.white,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
