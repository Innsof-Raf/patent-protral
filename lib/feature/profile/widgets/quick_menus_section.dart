import 'package:flutter/material.dart';
import 'package:patient_portal/route/route_constants.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/dimens.dart';
import '../../main_screen/helpers/main_screen_helpers.dart';
import 'quick_menu_button.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Quick menus",
          style: AppTextStyles.subHeaddingSemiBoldRoboto,
        ),
        Text(
          "Your new password must be at least 8 Charaters",
          style:
              AppTextStyles.bodyTextRoboto.copyWith(color: AppColors.textLight),
        ),
        Dimens.constHeight,
        Wrap(
          children: [
            QuickMenuButton(
                imagePath: 'assets/icons/view_reports_icon.svg',
                onPressed: () {
                  MainScreenHelpers.mainScreenNotifier.value = 3;
                },
                title: "View\nReports"),
            Dimens.constWidth10,
            QuickMenuButton(
              imagePath: 'assets/icons/lock_icon.dart.svg',
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RouteConstants.setPasswordScreen);
              },
              title: "Change\nPassword",
            ),
          ],
        ),
      ],
    );
  }
}
