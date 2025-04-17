import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String time;
  final String taskCount;
  final String mode;
  final String image;
   final Color color;

  TaskModel({
    required this.image,
    required this.title,
    required this.time,
    required this.taskCount,
    required this.mode,
    required this.color,
  });
}

