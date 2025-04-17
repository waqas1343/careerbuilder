import 'package:careerbuilder/model/learning_task_model/learning_task_model.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/view_model/Controller/learning_task/learning_task_controller.dart';
import 'package:careerbuilder/widgets/calender_widget/calender_widget.dart';
import 'package:careerbuilder/widgets/learning_task_card_widget/learning_task_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskProvider>(context).tasks;

    return Scaffold(
      body: Column(
        children: [
          const CalendarWidget(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: Appstrings.itemsTasks,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    CustomText(
                      text: Appstrings.all,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 3.w),
                    CustomText(
                      text: Appstrings.unRead,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(task: tasks[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
