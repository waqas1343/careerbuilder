import 'package:careerbuilder/model/learning_task_model/learning_task_model.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:flutter/material.dart';

class TaskProvider with ChangeNotifier {
  final List<TaskModel> _tasks = [
    TaskModel(
      title: 'Interface Design',
      time: '09:00 - 12:30',
      taskCount: '1 Task',
      mode: 'Online',
      image: AppImages.learning1,
      color: Appcolors.onBOne,
    ),
    TaskModel(
      title: 'Interface Design',
      time: '09:00 - 12:30',
      taskCount: '1 Task',
      mode: 'Online',
      image: AppImages.learning2,
      color: Appcolors.redColor,
    ),
    TaskModel(
        title: 'Interface Design',
        time: '09:00 - 12:30',
        taskCount: '1 Task',
        mode: 'Online',
        image: AppImages.learning1,
        color: Appcolors.btColor),
    TaskModel(
        title: 'Interface Design',
        time: '09:00 - 12:30',
        taskCount: '1 Task',
        mode: 'Online',
        image: AppImages.learning1,
        color: Appcolors.onBtwo),
  ];

  List<TaskModel> get tasks => _tasks;
}
