import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';

class LogOutTile extends StatelessWidget {
  const LogOutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(
              left: constraints.maxWidth * 0.08,
              top: constraints.maxWidth * 0.05,
              bottom: constraints.maxWidth * 0.05,
            ),
            side: BorderSide.none,
            foregroundColor: AppColors.textDark,
            backgroundColor: AppColors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {
            LoginScreenHelpers.loginSectionNotifer.value = 0;
            context.router.replaceAll([const LoginRoute()]);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/icons/log_out_icon.svg",
                colorFilter: ColorFilter.mode(AppColors.vilot, BlendMode.srcIn),
                width: 22,
                height: 22,
              ),
              const SizedBox(width: 18),
              const Text(
                "Logout",
                style: AppTextStyles.subHeaddingSemiBoldRoboto,
              ),
            ],
          ),
        );
      },
    );
  }
}
