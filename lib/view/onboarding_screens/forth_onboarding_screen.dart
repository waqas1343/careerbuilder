import 'package:careerbuilder/nevigation/app_nevigators/app_nevigation.dart';
import 'package:careerbuilder/utils/constant/app_button/app_button.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/app_system_ui/app_system_ui.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForthOnboardingScreen extends StatelessWidget {
  const ForthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSystemUI.setOverlayColor(Appcolors.onBOne);

    return Scaffold(
      backgroundColor: Appcolors.onBOne,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: Appstrings.onboardingTitle4,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Image.asset(
              AppImages.onBoarding4,
              fit: BoxFit.cover,
              height: 50.h,
            ),
            Column(
              children: [
                AppButtons.customElevatedButton(
                  width: 40.h,
                  hasBorder: false,
                  context: context,
                  backgroundColor: Appcolors.btColor,
                  label: Appstrings.signIn,
                  onPressed: () {
                    AppNavigators.changescreen(context, '/LoginScreens');
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                AppButtons.customElevatedButton(
                  width: 40.h,
                  hasBorder: false,
                  context: context,
                  backgroundColor: Appcolors.btColorW,
                  label: Appstrings.signUp,
                  onPressed: () {
                    AppNavigators.changescreen(context, '/SignUpScreen');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
