import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';

class DoctorsLoadingView extends StatelessWidget {
  const DoctorsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonLoadingView();
  }
}

class DoctorsMessageView extends StatelessWidget {
  const DoctorsMessageView({required this.title, this.message, super.key});

  final String title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.onSurfaceVariant;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.medical_services_outlined, color: color, size: 38),
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
