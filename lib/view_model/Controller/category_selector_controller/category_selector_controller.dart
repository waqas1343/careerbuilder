import 'package:flutter/foundation.dart';

class CategoryProvider with ChangeNotifier {
  String? selectedCategory;

  void selectCategory(String category) {
    selectedCategory = category;
    notifyListeners();
  }
}
