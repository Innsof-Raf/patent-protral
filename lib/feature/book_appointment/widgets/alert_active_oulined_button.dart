import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class AlertActiveOutlinedButton extends StatelessWidget {
  const AlertActiveOutlinedButton(
      {Key? key, required this.onPressed, required this.title})
      : super(key: key);
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: AppColors.white,
        side: const BorderSide(color: AppColors.vilot, width: .5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style:
            AppTextStyles.bodyLargeRobotoBold.copyWith(color: AppColors.vilot),
      ),
    );
  }
}
