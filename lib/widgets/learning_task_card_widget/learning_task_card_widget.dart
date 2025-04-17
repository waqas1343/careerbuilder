import 'package:careerbuilder/model/learning_task_model/learning_task_model.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  const TaskCard({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      decoration: BoxDecoration(
        color: task.color,
        borderRadius: BorderRadius.circular(3.w),
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: -10.h,
            right: -13.w,
            child: Container(
              height: 30.h,
              width: 75.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  task.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: task.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Spacer(),
                    CustomText(
                      text: task.taskCount,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                CustomText(
                  text: task.time,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 8.h), // was 65 fixed, now responsive
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.computer, size: 16),
                        SizedBox(width: 1.5.w),
                        CustomText(
                          text: task.mode,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(1.w),
                      child: const Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
