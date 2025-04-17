import 'package:careerbuilder/model/course_lists/course_list.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/widgets/calender_widget/calender_widget.dart';
import 'package:careerbuilder/widgets/custom_card_widget/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: CalendarWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: Appstrings.itemsTasks,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Spacer(),
                    CustomText(
                      text: Appstrings.all,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 3.w),
                    CustomText(
                        text: Appstrings.unRead,
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
                SizedBox(
                  child: CustomCourseCard(course: courseList.first),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
