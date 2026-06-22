// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class AddAttachmentsSection extends StatelessWidget {
  const AddAttachmentsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: const Size(0, 0),
            foregroundColor: AppColors.white,
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.white,
            elevation: 0,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: AppColors.dividerGrayColor,
                child: SvgPicture.asset(Assets.icons.attachmentIcon.path),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  'Add Document',
                  style: AppTextStyles.largeRobotoNormal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 55),
      ],
    );
  }
}
