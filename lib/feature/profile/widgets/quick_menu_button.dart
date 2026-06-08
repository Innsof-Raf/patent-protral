import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class QuickMenuButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onPressed;
  const QuickMenuButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        fixedSize: const Size(105, 54),
        elevation: 0,
        padding: const EdgeInsets.all(3),
        backgroundColor: AppColors.white,
        side: const BorderSide(color: AppColors.borderDarkColor),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(imagePath, height: 16, width: 16),
          Text(
            title,
            style: AppTextStyles.bodySemiBoldRoboto,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
