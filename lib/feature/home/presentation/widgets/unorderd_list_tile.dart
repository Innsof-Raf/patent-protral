import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class UnorderdListTile extends StatelessWidget {
  final String title;
  const UnorderdListTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 1.5, backgroundColor: AppColors.textDark),
        const SizedBox(width: 3),
        Text(title, style: AppTextStyles.bodyXSmallRobotoNormal),
      ],
    );
  }
}
