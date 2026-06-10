class MemeberFormValidationHelpers {
  static String? nameValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter member name';
    } else {
      return null;
    }
  }

  static String? dobValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter member date of birth';
    } else {
      return null;
    }
  }

  static String? nationalIdValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Enter member national id';
    } else if (value.length != 11) {
      return 'Enter a valid national id';
    } else {
      return null;
    }
  }

  static String? emailValidator({required String? value}) {
    final RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (value == null || value.isEmpty) {
      return null;
    } else if (!emailRegexp.hasMatch(value)) {
      return 'Enter a valid email id';
    } else {
      return null;
    }
  }
}
