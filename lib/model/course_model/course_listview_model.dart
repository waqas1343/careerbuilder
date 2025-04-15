import 'package:flutter/material.dart';

class CourseCardModel {
  final String title;
  final String roll;
  final String price;
  final double rating;
  final String hours;
  final String people;
  final Color color;
  final String imageAsset;

  CourseCardModel({
    required this.roll,
    required this.title,
    required this.price,
    required this.rating,
    required this.hours,
    required this.people,
    required this.color,
    required this.imageAsset,
  });
}
