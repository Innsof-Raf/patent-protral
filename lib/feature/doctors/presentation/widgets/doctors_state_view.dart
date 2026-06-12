import 'package:flutter/material.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class DoctorsLoadingView extends StatelessWidget {
  const DoctorsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.gifImages.ripple02.path, width: 96),
    );
  }
}

class DoctorsMessageView extends StatelessWidget {
  const DoctorsMessageView({
    required this.title,
    this.message,
    this.isError = false,
    super.key,
  });

  final String title;
  final String? message;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isError
        ? theme.colorScheme.error
        : theme.colorScheme.onSurfaceVariant;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isError
                  ? Icons.error_outline_rounded
                  : Icons.medical_services_outlined,
              color: color,
              size: 38,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            if (message != null && message!.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                message!,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.35,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
