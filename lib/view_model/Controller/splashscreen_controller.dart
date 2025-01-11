import 'package:flutter/material.dart';

class SplashscreenController extends ChangeNotifier {
  bool isloading = true;

  void loadingScreen() async {
    await Future.delayed(Duration(seconds: 3));
    isloading = false;
    notifyListeners();
  }
}
