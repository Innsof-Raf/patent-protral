import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class RadioButton extends StatelessWidget {
  final String value;
  final String groupValue;
  final String title;
  final VoidCallback onChanged;
  const RadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        value == groupValue
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft,
                  elevation: 0,
                  backgroundColor: AppColors.violet,
                  minimumSize: const Size(0, 0),
                  padding: const EdgeInsets.all(7.5),
                  shape: const CircleBorder(),
                ),
                onPressed: onChanged,
                child: const SizedBox(),
              )
            : OutlinedButton(
                style: OutlinedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  foregroundColor: AppColors.violet,
                  shape: const CircleBorder(
                    side: BorderSide(width: 1, color: AppColors.textLight),
                  ),
                  minimumSize: const Size(0, 0),
                  padding: const EdgeInsets.all(7.5),
                ),
                onPressed: onChanged,
                child: const SizedBox(),
              ),
        const SizedBox(width: 5),
        Text(title, style: AppTextStyles.largeRobotoNormal),
      ],
    );
  }
}
