import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';

class Validators {
  static String? enterName(String? value) {
    if (value == null || value.isEmpty) {
      return Appstrings.enterName;
    }
    return null;
  }

  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return Appstrings.emailRequired;
    }
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return Appstrings.validemail;
    }

    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return Appstrings.passwordRequired;
    }

    if (value.length < 6) {
      return Appstrings.passwordmust;
    }

    return null;
  }

  static String? confirmPasswordValidator(String value, String password) {
    if (value.isEmpty) {
      return Appstrings.confirmPasswordR;
    }

    if (value != password) {
      return Appstrings.passwordMatchE;
    }

    return null;
  }
}
