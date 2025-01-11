import 'package:careerbuilder/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/app_sizes/app_sizes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: AppSizes.bodyFontSize(context),
            width: double.infinity,
            color: Appcolors.mainColor,
          )
        ],
      ),
    );
  }
}
