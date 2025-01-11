import 'package:careerbuilder/view/splash_screen/splash_screen.dart';
import 'package:careerbuilder/view_model/Controller/splashscreen_controller.dart';
import 'package:provider/provider.dart';

final List<ChangeNotifierProvider> multiAppProvider = [
  ChangeNotifierProvider<SplashscreenController>(
    create: (context) => SplashscreenController(),
  )
];
