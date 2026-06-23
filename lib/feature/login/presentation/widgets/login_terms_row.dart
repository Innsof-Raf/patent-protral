import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginTermsRow extends StatelessWidget {
  const LoginTermsRow({super.key});

  static final Uri _termsUri = Uri.parse(
    'https://www.alleviamedicalcenter.com/home/user_policy',
  );

  Future<void> _openTerms() async {
    if (!await launchUrl(_termsUri, mode: LaunchMode.inAppWebView)) {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyStyle = AppTextStyles.bodyTextRoboto.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
      height: 1.35,
    );
    final linkStyle = bodyStyle.copyWith(
      color: theme.colorScheme.primary,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline,
      decorationColor: theme.colorScheme.primary,
    );

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(AppStaticTexts.byContinuing, style: bodyStyle),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 32),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            foregroundColor: theme.colorScheme.primary,
          ),
          onPressed: _openTerms,
          child: Text(AppStaticTexts.termsAndConditions, style: linkStyle),
        ),
      ],
    );
  }
}
