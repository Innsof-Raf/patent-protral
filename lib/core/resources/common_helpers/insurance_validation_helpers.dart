import 'package:patient_portal/core/resources/app_static_texts.dart';

class InsuranceValidationHelpers {
  static String? validateInsuranceType({required int? value}) {
    if (value == null) {
      return AppStaticTexts.selectYourInsurance;
    } else {
      return null;
    }
  }

  static String? validateInsuranceName({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStaticTexts.enterInsuranceName;
    } else {
      return null;
    }
  }

  static String? validateMemberNumber({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStaticTexts.enterMemberNumber;
    } else {
      return null;
    }
  }

  static String? expireDateValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStaticTexts.enterExpireDate;
    } else {
      return null;
    }
  }
}
