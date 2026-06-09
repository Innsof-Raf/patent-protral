import 'package:flutter/material.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class MyAppointmentScreenTabBar extends StatelessWidget {
  final bool isSelected;
  final String title;
  const MyAppointmentScreenTabBar({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.vilot,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              title,
              style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                color: AppColors.white,
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor, width: .5),
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(title, style: AppTextStyles.bodyLargeRobotoSemiBold),
          );
  }
}
