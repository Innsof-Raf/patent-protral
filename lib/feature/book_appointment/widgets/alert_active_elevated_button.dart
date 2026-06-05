import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class AlertActiveElevatedButton extends StatelessWidget {
  const AlertActiveElevatedButton(
      {Key? key, required this.onPressed, required this.title})
      : super(key: key);
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(20),
        backgroundColor: AppColors.vilot,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
            color: AppColors.vilot,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.bodyLargeRobotoBold.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
