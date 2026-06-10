import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class MemberTextFiled extends StatelessWidget {
  final String title;
  final String value;
  const MemberTextFiled({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: AppTextStyles.bodyTextRoboto),
        const SizedBox(height: 4),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.textFormFIeldBagroundColor,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            value,
            style: AppTextStyles.textFormFieldStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
