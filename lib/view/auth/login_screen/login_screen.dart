import 'package:careerbuilder/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/utils/app_sizes/app_sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: AppSizes.height30(context),
          ),
          CustomText(
            text: Appstrings.logInyour,
            color: Appcolors.btColorW,
            fontSize: AppSizes.titleFontSize(context),
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
