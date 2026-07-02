import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginTermsRow extends StatefulWidget {
  const LoginTermsRow({required this.onChanged, super.key});

  final ValueChanged<bool> onChanged;

  @override
  State<LoginTermsRow> createState() => _LoginTermsRowState();
}

class _LoginTermsRowState extends State<LoginTermsRow> {
  bool _agreed = false;

  void _onToggle(bool? value) {
    final newValue = value ?? false;
    setState(() => _agreed = newValue);
    widget.onChanged(newValue);
  }

  Future<void> _launchTerms() async {
    final uri = Uri.parse(ConstantUrls.termsAndConditionUrl);
    if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
      debugPrint('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyStyle = theme.textTheme.bodySmall?.copyWith(
      color: AppColors.textLight,
      fontSize: 12,
    );
    final linkStyle = bodyStyle?.copyWith(
      color: AppColors.primaryCyan,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.primaryCyan,
    );

    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
            value: _agreed,
            onChanged: _onToggle,
            side: const BorderSide(color: AppColors.borderColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            activeColor: AppColors.primaryCyan,
          ),
        ),
        const Gap(10),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: bodyStyle,
              children: [
                TextSpan(text: context.lang.byContinuing),
                TextSpan(
                  text: context.lang.termsAndConditions,
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()..onTap = _launchTerms,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
