import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_icon_button.dart';

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
        child: CommonIconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
          color: theme.colorScheme.onSurface,
          tooltip: context.lang.back,
        ),
      ),
      title: Text(
        context.lang.medicalInsurance,
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
