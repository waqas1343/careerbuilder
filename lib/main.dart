import 'package:careerbuilder/homePage/home_page.dart';
import 'package:careerbuilder/utils/text_theme/text_theme.dart';
import 'package:careerbuilder/view_model/multi_Provider/multi_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiAppProvider,
      child: MaterialApp(
        theme: AppTextTheme().appTheme,
        home: SplashScreen(),
      ),
    );
  }
}
