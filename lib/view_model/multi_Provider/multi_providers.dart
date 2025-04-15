import 'package:careerbuilder/view_model/Controller/bottom_navigation_controller/bottom_navigation_controller.dart';
import 'package:careerbuilder/view_model/Controller/category_selector_controller/category_selector_controller.dart';
import 'package:careerbuilder/view_model/Controller/splashscreen_controller.dart';
import 'package:provider/provider.dart';

import '../Controller/suffix_controller.dart';

final List<ChangeNotifierProvider> multiAppProvider = [
  ChangeNotifierProvider<SplashscreenController>(
    create: (context) => SplashscreenController(),
  ),
  ChangeNotifierProvider<SuffixController>(
    create: (context) => SuffixController(),
  ),
  ChangeNotifierProvider<CategoryProvider>(
    create: (context) => CategoryProvider(),
  ),
  ChangeNotifierProvider<NavigationProvider>(
    create: (context) => NavigationProvider(),
  ),
];
