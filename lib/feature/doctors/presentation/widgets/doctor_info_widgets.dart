import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';

class DoctorInfoButton extends StatelessWidget {
  const DoctorInfoButton({
    super.key,
    required this.doctorName,
    required this.bio,
  });

  final String doctorName;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .4),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .2),
        ),
      ),
      child: SizedBox(
        width: 28,
        height: 28,
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
          visualDensity: VisualDensity.compact,
          splashRadius: 14,
          onPressed: () => showDialog<void>(
            context: context,
            builder: (dialogContext) => DoctorInfoDialog(
              doctorName: doctorName.toTitleCase(),
              bio: bio,
            ),
          ),
          tooltip: AppStaticTexts.viewInfo,
          icon: Icon(
            Icons.info_outline_rounded,
            size: 16,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class DoctorInfoDialog extends StatelessWidget {
  const DoctorInfoDialog({
    super.key,
    required this.doctorName,
    required this.bio,
  });

  final String doctorName;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0,
      backgroundColor: AppColors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStaticTexts.doctorInfo,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    doctorName,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(16),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Text(
                        bio,
                        textAlign: TextAlign.justify,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const Gap(24),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ActiveButton(
                  //     onPressed: () => Navigator.pop(context),
                  //     height: 50,
                  //     child: const Text(AppStaticTexts.close),
                  //   ),
                  // ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
                color: theme.colorScheme.onSurfaceVariant,
                visualDensity: VisualDensity.compact,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
