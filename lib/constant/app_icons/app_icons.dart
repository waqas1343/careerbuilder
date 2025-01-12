import 'package:flutter/material.dart';

class AppIcons {
  static const Icon emailIcon = Icon(Icons.email_outlined);
  static const Icon passwordIcon = Icon(Icons.lock);

  static Icon customIcon(IconData iconData,
      {Color color = Colors.grey, double size = 24.0}) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}
