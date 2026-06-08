import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

import '../../../resources/app_colors.dart';

class MemberSection extends StatelessWidget {
  const MemberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Members",
                  style: AppTextStyles.subHeaddingSemiBoldRoboto,
                ),
                Text(
                  "Found 23 members",
                  style: AppTextStyles.bodyTextRoboto,
                )
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    elevation: 0,
                    backgroundColor: AppColors.dividerGrayColor,
                    padding: const EdgeInsets.all(12),
                    minimumSize: const Size(0, 0)),
                onPressed: () {},
                child:
                    SvgPicture.asset('assets/icons/key_board_arrow_right.svg')),
          ],
        ),
      ],
    );
  }
}
