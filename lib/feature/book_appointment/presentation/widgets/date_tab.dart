import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class DateTab extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  const DateTab({super.key, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          DateFormat('dd').format(date),
          style: AppTextStyles.extraLargeRobotoSemiBold.copyWith(
            color: isSelected ? AppColors.vilot : AppColors.textDark,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          DateFormat('EEE').format(date).toUpperCase(),
          style: AppTextStyles.bodyTextRoboto,
        ),
        const SizedBox(height: 7),
      ],
    );
  }
}

