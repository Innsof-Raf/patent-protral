import 'package:patient_portal/feature/set_password/widgets/set_password_section.dart';

class ChangePasswordFormHelpers {
  static String? validatePassword(String? value) {
    if (value == null || value == '') {
      return 'Please enter your password';
    } else if (value.length >= 4) {
      return null;
    } else {
      return 'Enter a password with minimum 4 charatcers';
    }
  }

  static String? validateConfirmPassword(String? value) {
    if (value == null || value == '') {
      return 'Please enter your password';
    } else if (SetPasswordSection.newPasswordController.text == value) {
      return null;
    } else {
      return 'Password does\'nt match';
    }
  }
}
