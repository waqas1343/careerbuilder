import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:flutter/material.dart';

class AppIcons {
  static const Icon emailIcon = Icon(Icons.email_outlined);
  static const Icon passwordIcon = Icon(Icons.lock);
  static const Icon suffixIconOff = Icon(Icons.visibility_off_outlined);
  static const Icon suffixIconOnn = Icon(Icons.visibility_outlined);
  static const Icon leftArrowIcon =
      Icon(Icons.arrow_back_ios, color: Colors.white70, size: 16);
  static const Icon rightArrowIcon =
      Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16);

  static const Icon searchIcon = Icon(
    Icons.search_outlined,
    color: Appcolors.greyColur,
  );
  static const Icon menuIcon = Icon(
    Icons.menu_outlined,
    color: Appcolors.greyColur,
  );

  static Icon notificationIcon = Icon(
    Icons.notifications_none,
    color: Appcolors.greyColur,
    size: 30,
  );

  static Icon customIcon(IconData iconData,
      {Color color = Colors.grey, double size = 24.0}) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}
