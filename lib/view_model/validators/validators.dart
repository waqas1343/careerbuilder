import 'package:careerbuilder/constant/app_strings/appstrings.dart';

class Validators {
  // Required field validator
  static String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return Appstrings.validation;  // Return validation message from Appstrings
    }
    return null;
  }

  // Email validation
  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return Appstrings.emailRequired;  // Return email required message from Appstrings
    }
    // Regex pattern for basic email validation
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email';  // Error message if email format is incorrect
    }
    return null;
  }

  // Password validation (minimum length check)
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';  // Error message if password is empty
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';  // Error message if password length is less than 6
    }
    return null;
  }
}
