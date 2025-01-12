import 'package:careerbuilder/view/onboarding_screens/first_onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'forth_onboarding_screen.dart';
import 'second_onboarding_screen.dart';
import 'third_onboarding_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        FirstOnboardingScreen(),
        SecondOnboardingScreen(),
        ThirdOnboardingScreen(),
        ForthOnboardingScreen(),
      ],
    );
  }
}
