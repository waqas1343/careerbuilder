import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:100.h,
            width: double.infinity,
            color: Appcolors.mainColor,
          )
        ],
      ),
    );
  }
}
