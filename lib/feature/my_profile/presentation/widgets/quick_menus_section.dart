import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/core/route/route_constants.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({super.key});

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
          style: AppTextStyles.bodyTextRoboto.copyWith(
            color: AppColors.textLight,
          ),
        ),
        const SizedBox(height: Dimens.constPadding),
        Wrap(
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(105, 54),
                elevation: 0,
                padding: const EdgeInsets.all(3),
                backgroundColor: AppColors.white,
                side: const BorderSide(
                  color: AppColors.textFormFIeldBagroundColor,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteConstants.reportsScreen);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/view_report.svg"),
                  const SizedBox(height: 5),
                  const Text(
                    "View\nReports",
                    style: AppTextStyles.bodySemiBoldRoboto,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(105, 54),
                elevation: 0,
                padding: const EdgeInsets.all(3),
                backgroundColor: AppColors.white,
                side: const BorderSide(
                  color: AppColors.textFormFIeldBagroundColor,
                ),
              ),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/change_password.svg"),
                  const SizedBox(height: 5),
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
