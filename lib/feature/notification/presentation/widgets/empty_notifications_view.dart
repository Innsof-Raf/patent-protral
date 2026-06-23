import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class EmptyNotificationsView extends StatelessWidget {
  const EmptyNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_none_rounded,
                size: 64,
                color: colorScheme.primary.withValues(alpha: 0.4),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'All caught up!',
              textAlign: TextAlign.center,
              style: AppTextStyles.extraLargeRobotoBold.copyWith(
                fontWeight: FontWeight.w800,
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "You don't have any new notifications at the moment. We'll keep you posted!",
              textAlign: TextAlign.center,
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
