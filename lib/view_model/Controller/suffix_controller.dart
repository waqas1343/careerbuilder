import 'package:flutter/material.dart';

class SuffixController extends ChangeNotifier {
  bool isVisibleFirst = true;
  bool isVisibleSecond = true;

  void firstToggle() {
    isVisibleFirst = !isVisibleFirst;

    notifyListeners();
  }

  void secondToggle() {
    isVisibleSecond = !isVisibleSecond;

    notifyListeners();
  }
}
