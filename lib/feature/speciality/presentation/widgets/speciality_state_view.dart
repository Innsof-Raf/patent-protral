import 'package:flutter/material.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class SpecialityLoadingView extends StatelessWidget {
  const SpecialityLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Image.asset(
        Assets.gifImages.ripple02.path,
        width: MediaQuery.sizeOf(context).shortestSide * .32,
        color: theme.colorScheme.primary,
      ),
    );
  }
}

class SpecialityMessageView extends StatelessWidget {
  const SpecialityMessageView({
    super.key,
    required this.title,
    required this.message,
    this.isError = false,
  });

  final String title;
  final String message;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = isError
        ? theme.colorScheme.error
        : theme.colorScheme.primary;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: .12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isError
                    ? Icons.cloud_off_outlined
                    : Icons.medical_information_outlined,
                color: iconColor,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
