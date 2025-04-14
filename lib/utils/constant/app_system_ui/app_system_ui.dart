import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppSystemUI {
  static void setOverlayColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
