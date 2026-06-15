class ChangePasswordFormHelpers {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length >= 8) {
      return null;
    } else {
      return 'Enter a password with minimum 8 characters';
    }
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value == password) {
      return null;
    } else {
      return 'Passwords do not match';
    }
  }
}
