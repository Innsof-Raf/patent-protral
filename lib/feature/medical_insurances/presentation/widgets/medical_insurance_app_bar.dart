import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';

class MedicalInsuranceAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MedicalInsuranceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      surfaceTintColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 3,
      centerTitle: false,
      leading: Center(
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          onPressed: () => Navigator.of(context).pop(),
          color: theme.colorScheme.onSurface,
          tooltip: 'Back',
          style: IconButton.styleFrom(
            backgroundColor: theme.colorScheme.surfaceContainerHighest
                .withValues(alpha: 0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      title: Text(
        AppStaticTexts.medicalInsurance,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
