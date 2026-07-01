import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';

class LoginBrandHeader extends StatelessWidget {
  const LoginBrandHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.logos.innsofColor.svg(height: 80, fit: BoxFit.contain),
        const Gap(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            AppStaticTexts.loginSubtitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.textBluishDark,
              fontSize: 14,
              height: 1.4,
              letterSpacing: 0.1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
