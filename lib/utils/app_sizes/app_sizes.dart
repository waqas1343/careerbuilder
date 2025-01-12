import 'package:flutter/material.dart';

class AppSizes {
  static double getWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  static double getHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height *
        percentage; 
  }
  
  static double smallPadding(BuildContext context) => getWidth(context, 0.02);
  static double mediumPadding(BuildContext context) => getWidth(context, 0.05);
  static double largePadding(BuildContext context) => getWidth(context, 0.1);

  static double buttonHeight(BuildContext context) => getHeight(context, 0.06);
  static double titleFontSize(BuildContext context) => getWidth(context, 0.08);
  static double bodyFontSize(BuildContext context) => getWidth(context, 0.05);

  static double titleText(BuildContext context) => getWidth(context, 0.1);
  static double buttonNext = 22;
  static double bodyFontSize1(BuildContext context) => getWidth(context, 0.06);
  static double bodyFontSize2(BuildContext context) => getWidth(context, 0.05);

  static double largeTitleText(BuildContext context) => getWidth(context, 0.12);
  static double mediumTitleText(BuildContext context) =>
      getWidth(context, 0.09);
  static double smallTitleText(BuildContext context) => getWidth(context, 0.06);

  static double largeBodyText(BuildContext context) => getWidth(context, 0.05);
  static double mediumBodyText(BuildContext context) =>
      getWidth(context, 0.045);
  static double smallBodyText(BuildContext context) => getWidth(context, 0.04);


  static double height10(BuildContext context) => getHeight(context, 0.10); 
  static double height20(BuildContext context) => getHeight(context, 0.20); 
  static double height30(BuildContext context) => getHeight(context, 0.30); 
  static double height40(BuildContext context) => getHeight(context, 0.40); 
  static double height50(BuildContext context) => getHeight(context, 0.50); 
  static double height60(BuildContext context) => getHeight(context, 0.60); 
  static double height70(BuildContext context) => getHeight(context, 0.70); 
  static double height80(BuildContext context) => getHeight(context, 0.80); 
  static double height90(BuildContext context) => getHeight(context, 0.90); 
}
