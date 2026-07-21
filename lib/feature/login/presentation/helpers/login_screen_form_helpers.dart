import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class LoginScreenFormHelpers {
  static String? validateMobileNumber(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.lang.enterYourMobileNumber;
    }
    if (value.length != 8) {
      return context.lang.mobileNumberMustBe8Digits;
    }
    return null;
  }

  static String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.lang.pleaseEnterYourPassword;
    }
    if (value.length < 6) {
      return context.lang.passwordMustBeAtLeast6Characters;
    }
    return null;
  }
}
