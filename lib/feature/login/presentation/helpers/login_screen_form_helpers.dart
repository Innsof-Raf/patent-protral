class LoginScreenFormHelpers {
  static String? validateMobileNumber(String? value) {
    final RegExp mobileNumberRegex = RegExp('^(\\d{8}(\\,\\d{8}){0,2})\$');
    if (value == null || value == '') {
      return 'Please enter your mobile number';
    } else if (mobileNumberRegex.hasMatch(value)) {
      return null;
    } else {
      return 'Enter a valid mobile number or email';
    }
  }
}
