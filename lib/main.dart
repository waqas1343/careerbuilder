import 'package:careerbuilder/nevigation/routers/routes_naming.dart';
import 'package:careerbuilder/view/splash_screen/splash_screen.dart';
import 'package:careerbuilder/view_model/multi_Provider/multi_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'nevigation/routers/routes_screens.dart';
import 'utils/text_theme/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiAppProvider,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            initialRoute: RoutesNames.initialRoutes,
            routes: RoutesScreens.getScreens(),
            theme: AppTextTheme.lightTheme,
            darkTheme: AppTextTheme.darkTheme,
            themeMode: ThemeMode.light,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
