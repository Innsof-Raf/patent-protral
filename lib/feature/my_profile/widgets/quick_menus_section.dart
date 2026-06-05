import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innsof_patient_portal/resources/app_colors.dart';
import 'package:innsof_patient_portal/resources/app_text_styles.dart';
import 'package:innsof_patient_portal/resources/dimens.dart';
import 'package:innsof_patient_portal/route/route_constants.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  fixedSize: const Size(105, 54),
                  elevation: 0,
                  padding: const EdgeInsets.all(Dimens.constPadding3),
                  backgroundColor: AppColors.white,
                  side: const BorderSide(
                    color: AppColors.textFormFIeldBagroundColor,
                  )),
              onPressed: () {
                Navigator.pushNamed(context, RouteConstants.myReportScreen);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/view_report.svg",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "View\nReports",
                    style: AppTextStyles.bodySemiBoldRoboto,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Dimens.constWidth10,
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  fixedSize: const Size(105, 54),
                  elevation: 0,
                  padding: const EdgeInsets.all(Dimens.constPadding3),
                  backgroundColor: AppColors.white,
                  side: const BorderSide(
                    color: AppColors.textFormFIeldBagroundColor,
                  )),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/change_password.svg",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Change\nPassword",
                    style: AppTextStyles.bodySemiBoldRoboto,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
