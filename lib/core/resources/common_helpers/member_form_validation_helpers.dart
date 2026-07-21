import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class MemeberFormValidationHelpers {
  static String? nameValidator(BuildContext context, {required String? value}) {
    if (value == null || value.isEmpty) {
      return context.lang.enterMemberName;
    } else {
      return null;
    }
  }

  static String? dobValidator(BuildContext context, {required String? value}) {
    if (value == null || value.isEmpty) {
      return context.lang.enterMemberDob;
    } else {
      return null;
    }
  }

  static String? nationalIdValidator(
    BuildContext context, {
    required String? value,
  }) {
    if (value == null || value.isEmpty) {
      return context.lang.enterMemberNationalId;
    } else if (value.length != 11) {
      return context.lang.enterValidNationalId;
    } else {
      return null;
    }
  }

  static String? emailValidator(
    BuildContext context, {
    required String? value,
  }) {
    final RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (value == null || value.isEmpty) {
      return null;
    } else if (!emailRegexp.hasMatch(value)) {
      return context.lang.enterValidEmail;
    } else {
      return null;
    }
  }
}
