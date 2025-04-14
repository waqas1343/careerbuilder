import 'package:careerbuilder/utils/constant/app_button/app_button.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.onBOne,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: Appstrings.onboardingTitle1,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontFamily: 'Verdana',
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Image.asset(
              AppImages.onBoarding1,
              fit: BoxFit.contain,
              height: 50.h,
            ),
            AppButtons.customElevatedButton(
              context: context,
              backgroundColor: Appcolors.onBOne,
              label: Appstrings.next,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/onboardingTwo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
