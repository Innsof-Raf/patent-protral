import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class AlertActiveElevatedButton extends StatelessWidget {
  const AlertActiveElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(20),
        backgroundColor: AppColors.violet,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(color: AppColors.violet),
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
