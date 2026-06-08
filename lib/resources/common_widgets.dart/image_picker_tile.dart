import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

import '../app_colors.dart';

class ImagePickerTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onPressed;
  const ImagePickerTile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.white,
        minimumSize: const Size(0, 0),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.dividerGrayColor,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(iconPath),
          ),
          const SizedBox(height: 4),
          Text(title, style: AppTextStyles.bodyTextRoboto),
        ],
      ),
    );
  }
}
