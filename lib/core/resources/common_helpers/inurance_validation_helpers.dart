class InsuranceValidationHelpers {
  static String? validateInsuranceType({required int? value}) {
    if (value == null) {
      return 'Select your insurance';
    } else {
      return null;
    }
  }

  static String? validateInsuranceName({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter insurance name';
    } else {
      return null;
    }
  }

  static String? validateMemberNumber({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter member number';
    } else {
      return null;
    }
  }

  static String? expireDateValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter expire date';
    } else {
      return null;
    }
  }
}
