import 'package:careerbuilder/constant/app_button/app_button.dart';
import 'package:careerbuilder/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/constant/app_images/app_images.dart';
import 'package:careerbuilder/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/utils/app_sizes/app_sizes.dart';
import 'package:flutter/material.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.onBOne,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: Appstrings.onBtitlef,
              color: Appcolors.textColor,
              fontSize: AppSizes.titleFontSize(context),
              fontWeight: FontWeight.w700,
            ),
            Image.asset(AppImages.onBoarding1),
            AppButtons.customElevatedButton(
              backgroundColor: Appcolors.onBOne,
              label: Appstrings.next,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/onboardingTwo');
              },
            )
          ],
        ),
      ),
    );
  }
}
