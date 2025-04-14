import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:flutter/material.dart';

class AppTextFields {
  static Widget customTextField({
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    Icon? prefixIcon,
    Widget? suffixIcon,
    Color? fillColor,
    Color? borderColor,
    double borderRadius = 12.0,
    EdgeInsetsGeometry? contentPadding,
    required FormFieldValidator<String>? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        errorStyle: TextStyle(
          color: Appcolors.mainColor,
          fontSize: 14,
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor ?? Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide:
              BorderSide(color: borderColor ?? Appcolors.btColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor ?? Colors.grey, width: 1),
        ),
      ),
      validator: validator,
    );
  }
}
