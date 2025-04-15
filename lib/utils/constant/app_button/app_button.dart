import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static Widget customElevatedButton({
    required BuildContext context,
    required String label,
    required VoidCallback onPressed,
    required Color? backgroundColor,
    Color? textColor,
    double? width,
    double? height,
    double? borderRadius,
    bool hasBorder = true,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width ?? 200, height ?? 50),
        shape: RoundedRectangleBorder(
          side: hasBorder
              ? BorderSide(color: Appcolors.textColor, width: 2)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius ?? 50),
        ),
        elevation: 5,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 20, color: textColor ?? Appcolors.textColor),
      ),
    );
  }
}
