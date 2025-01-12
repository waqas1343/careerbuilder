import 'package:careerbuilder/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/nevigation/routers/routes_naming.dart';
import 'package:careerbuilder/utils/text_theme/text_theme.dart';
import 'package:careerbuilder/view_model/multi_Provider/multi_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'nevigation/routers/routes_screens.dart';
import 'view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Appcolors.btColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Appcolors.btColor,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiAppProvider,
      child: MaterialApp(
        initialRoute: RoutesNames.initialRoutes,
        routes: RoutesScreens.getScreens(),
        theme: AppTextTheme().appTheme,
        home: SplashScreen(),
      ),
    );
  }
}
