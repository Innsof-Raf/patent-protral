import 'package:flutter/material.dart';
import 'package:patient_portal/resources/dimens.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class RoundedCheackBoxTile extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onChanged;
  final String title;
  const RoundedCheackBoxTile(
      {super.key,
      required this.isSelected,
      required this.onChanged,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        isSelected
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: AppColors.white,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const EdgeInsets.all(5),
                    minimumSize: const Size(0, 0),
                    shape: const CircleBorder()),
                onPressed: onChanged,
                child: const Icon(
                  Icons.done,
                  size: 7.5,
                  color: AppColors.white,
                ))
            : OutlinedButton(
                style: OutlinedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: AppColors.vilot,
                    shape: const CircleBorder(
                        side: BorderSide(width: 1, color: AppColors.textLight)),
                    minimumSize: const Size(0, 0),
                    padding: const EdgeInsets.all(5)),
                onPressed: onChanged,
                child: const Icon(
                  null,
                  size: 7.5,
                  color: AppColors.white,
                )),
        Dimens.constWidth10,
        Text(
          title,
          style: AppTextStyles.largeRobotoNormal,
        )
      ],
    );
  }
}
