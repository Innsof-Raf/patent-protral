import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: AppColors.white,
      elevation: 0,
      titleSpacing: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: const Text(
        'My Profile',
        style: AppTextStyles.largeSemiBoldRoboto,
      ),
      leading: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, minimumSize: const Size(0, 0)),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          child: SvgPicture.asset('assets/icons/drawer_icon.svg')),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
