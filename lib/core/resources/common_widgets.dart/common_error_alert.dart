import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';

class CommonErrorAlert extends StatelessWidget {
  final String content;
  const CommonErrorAlert({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
                color: theme.colorScheme.onSurfaceVariant,
                visualDensity: VisualDensity.compact,
              ),
            ),
            SvgPicture.asset(
              Assets.icons.errorIcon.path,
              height: 80,
              width: 80,
            ),
            const Gap(24),
            Text(
              AppStaticTexts.failed,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.error,
              ),
            ),
            const Gap(12),
            Text(
              content,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(32),
            ActiveButton(
              onPressed: () => Navigator.pop(context),
              width: double.infinity,
              height: 56,
              backgroundColor: theme.colorScheme.errorContainer,
              foregroundColor: theme.colorScheme.onErrorContainer,
              child: Text(
                AppStaticTexts.ok.toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
