import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class SuccessDialog extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const SuccessDialog({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: 251,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 15,
                  style: IconButton.styleFrom(minimumSize: const Size(0, 0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close, color: AppColors.black),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              AppStaticTexts.success,
              style: AppTextStyles.extraLargeRobotoBold.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.subHeadingSemiBoldRoboto,
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(Assets.icons.doneIcon.path),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: onPressed,
                child: Text(
                  AppStaticTexts.done.toUpperCase(),
                  style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
