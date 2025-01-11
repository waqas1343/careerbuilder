import 'package:flutter/material.dart';

class AppSizes {
  static double getWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  static double getHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  static double smallPadding(BuildContext context) => getWidth(context, 0.02);
  static double mediumPadding(BuildContext context) => getWidth(context, 0.05);
  static double largePadding(BuildContext context) => getWidth(context, 0.1);

  static double buttonHeight(BuildContext context) => getHeight(context, 0.06);
  static double titleFontSize(BuildContext context) => getWidth(context, 0.08);
  static double bodyFontSize(BuildContext context) => getWidth(context, 0.05);

  //////LogoTitle ka text size ////////////////
  static double titleText(BuildContext context) => getWidth(context, 32);
  ////////////onBorading ka text size
  static double buttonNext(BuildContext context) => getWidth(context, 16);
  static double bodyFontSize1(BuildContext context) => getWidth(context, 16);
  static double bodyFontSize2(BuildContext context) => getWidth(context, 14);
}
