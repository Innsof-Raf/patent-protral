import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class EditProfileDetailsFormValidationHelpers {
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

  static String? phoneNumberValidator(
    BuildContext context, {
    required String? value,
  }) {
    final RegExp mobileNumberRegex = RegExp('^(\\d{8}(\\,\\d{8}){0,2})\$');
    if (value == null || value.isEmpty) {
      return context.lang.enterYourMobileNumber;
    } else if (!mobileNumberRegex.hasMatch(value)) {
      return context
          .lang
          .enterYourMobileNumber; // Use a more general error or create a specific one
    } else {
      return null;
    }
  }
}
