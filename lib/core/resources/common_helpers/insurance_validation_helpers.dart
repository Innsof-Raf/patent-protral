import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class InsuranceValidationHelpers {
  static String? validateInsuranceType(
    BuildContext context, {
    required int? value,
  }) {
    if (value == null) {
      return context.lang.selectYourInsurance;
    } else {
      return null;
    }
  }

  static String? validateInsuranceName(
    BuildContext context, {
    required String? value,
  }) {
    if (value == null || value.isEmpty) {
      return context.lang.enterInsuranceName;
    } else {
      return null;
    }
  }

  static String? validateMemberNumber(
    BuildContext context, {
    required String? value,
  }) {
    if (value == null || value.isEmpty) {
      return context.lang.enterMemberNumber;
    } else {
      return null;
    }
  }

  static String? expireDateValidator(
    BuildContext context, {
    required String? value,
  }) {
    if (value == null || value.isEmpty) {
      return context.lang.enterExpireDate;
    } else {
      return null;
    }
  }
}
