import 'package:careerbuilder/utils/constant/app_button/app_button.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.onBtwo,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: Appstrings.onboardingTitle2,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Image.asset(
              AppImages.onBoarding2,
              fit: BoxFit.contain,
              height: 45.h,
            ),
            AppButtons.customElevatedButton(
              context: context,
              backgroundColor: Appcolors.onBtwo,
              label: Appstrings.next,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/onboardingThird');
              },
            )
          ],
        ),
      ),
    );
  }
}
