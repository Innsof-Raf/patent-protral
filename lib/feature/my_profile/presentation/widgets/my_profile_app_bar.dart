import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class MyProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      titleSpacing: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: const Text('My Profile', style: AppTextStyles.largeSemiBoldRoboto),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.more_vert, color: AppColors.textDark),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(35);
}
