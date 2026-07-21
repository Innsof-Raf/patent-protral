import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class DefaultProfileImage extends StatelessWidget {
  final double radius;
  const DefaultProfileImage({super.key, this.radius = 24});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColorLight,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: theme.colorScheme.surfaceContainerHighest,
        child: ClipOval(
          child: Image.asset(
            Assets.images.memberDefaultProfileImage.path,
            fit: BoxFit.cover,
            width: radius * 2,
            height: radius * 2,
          ),
        ),
      ),
    );
  }
}
