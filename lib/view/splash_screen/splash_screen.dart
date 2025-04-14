import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/app_system_ui/app_system_ui.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/nevigation/routers/routes_naming.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/Controller/splashscreen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSystemUI.setOverlayColor(Appcolors.mainColor);
    final splashscreen = Provider.of<SplashscreenController>(context);
    splashscreen.loadingScreen();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!splashscreen.isloading) {
        Navigator.of(context).pushReplacementNamed(RoutesNames.mainScreen);
      }
    });

    return Scaffold(
      backgroundColor: Appcolors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            splashscreen.isloading ? CircularProgressIndicator() : Container(),
            CustomText(
              text: Appstrings.logoT,
              color: Appcolors.textColor,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
