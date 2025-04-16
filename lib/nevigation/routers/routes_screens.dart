import 'package:careerbuilder/view/screens/homePage/home_page.dart';
import 'package:careerbuilder/nevigation/routers/routes_naming.dart';
import 'package:careerbuilder/view/auth/login_screen/login_screen.dart';
import 'package:careerbuilder/view/auth/signup_screen/signup_screen.dart';
import 'package:careerbuilder/view/bottom_navigation/bottom_navigation.dart';
import 'package:careerbuilder/view/onboarding_screens/forth_onboarding_screen.dart';
import 'package:careerbuilder/view/onboarding_screens/main_screen.dart';
import 'package:careerbuilder/view/onboarding_screens/second_onboarding_screen.dart';
import 'package:careerbuilder/view/onboarding_screens/third_onboarding_screen.dart';
import 'package:careerbuilder/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RoutesScreens {
  static Map<String, WidgetBuilder> getScreens() {
    return {
      RoutesNames.splashscreen: (context) => const SplashScreen(),
      RoutesNames.mainScreen: (context) => const MainScreen(),
      RoutesNames.onboardingTwo: (context) => const SecondOnboardingScreen(),
      RoutesNames.onboardingThird: (context) => const ThirdOnboardingScreen(),
      RoutesNames.onboardingFourth: (context) => const ForthOnboardingScreen(),
      RoutesNames.login: (context) => LoginScreen(),
      RoutesNames.signUp: (context) => SignupScreen(),
      RoutesNames.homeScreen: (context) => HomePage(),
      RoutesNames.bottomNavigation: (context) => BottomNavScreen(),
    };
  }
}
