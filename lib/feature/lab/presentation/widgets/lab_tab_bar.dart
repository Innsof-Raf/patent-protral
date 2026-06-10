import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class LabTabBar extends StatelessWidget {
  final String title;
  const LabTabBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Text(
        title,
        style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(fontSize: 12),
      ),
    );
  }
}
