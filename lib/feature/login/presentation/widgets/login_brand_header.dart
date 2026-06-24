import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class LoginBrandHeader extends StatelessWidget {
  const LoginBrandHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
      fontWeight: FontWeight.w700,
      color: theme.colorScheme.onSurface,
      height: 1.2,
    );
    final subtitleStyle = AppTextStyles.largeRobotoNormal.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
      height: 1.35,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Get involved with',
                style: titleStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 12),
            Assets.logos.innsofColor.svg(width: 96, fit: BoxFit.contain),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Access appointments, records, and care updates securely.',
          style: subtitleStyle,
        ),
      ],
    );
  }
}
