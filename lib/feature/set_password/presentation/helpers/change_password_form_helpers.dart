import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class ChangePasswordFormHelpers {
  static String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.lang.enterPassword;
    } else if (value.length >= 8) {
      return null;
    } else {
      return context.lang.passwordMinLength;
    }
  }

  static String? validateConfirmPassword(
    BuildContext context,
    String? value,
    String? password,
  ) {
    if (value == null || value.isEmpty) {
      return context.lang.confirmPasswordRequired;
    } else if (value == password) {
      return null;
    } else {
      return context.lang.passwordsDoNotMatch;
    }
  }
}
