import 'package:careerbuilder/view_model/Controller/splashscreen_controller.dart';
import 'package:provider/provider.dart';

import '../Controller/suffix_controller.dart';

final List<ChangeNotifierProvider> multiAppProvider = [
  ChangeNotifierProvider<SplashscreenController>(
    create: (context) => SplashscreenController(),
  ),
  ChangeNotifierProvider<SuffixController>(
    create: (context) => SuffixController(),
  )
];
