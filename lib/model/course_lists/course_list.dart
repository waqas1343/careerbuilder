import 'package:careerbuilder/model/course_model/course_listview_model.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:flutter/material.dart';

final List<CourseCardModel> courseList = [
  CourseCardModel(
    title: "UX/UI",
    roll: 'designer',
    price: "800\$",
    rating: 4.7,
    hours: "147 Hours",
    people: "10k People",
    color: Color(0xFFCCFF00),
    imageAsset: AppImages.banner1,
  ),
  CourseCardModel(
    title: "SMM &",
    price: "400\$",
    rating: 4.9,
    hours: "125 Hours",
    people: "7k People",
    color: Color(0xFFFF6F4D),
    imageAsset: AppImages.banner2,
    roll: 'Marketing',
  ),
];
final List<CourseCardModel> lectureList = [
  CourseCardModel(
    title: Appstrings.figma,
    roll: Appstrings.componets,
    price: "800\$",
    rating: 4.7,
    hours: "26 Hours",
    people: "9k People",
    color: Appcolors.onBOne,
    imageAsset: AppImages.banner3,
  ),
  CourseCardModel(
    title: Appstrings.designPortfolio,
    price: "300\$",
    rating: 5.0,
    hours: "10 Hours",
    people: "71k People",
    color: Appcolors.onBtwo,
    imageAsset: AppImages.banner4,
    roll: Appstrings.caseIncrement,
  ),
];
final List<CourseCardModel> onTopList = [
  CourseCardModel(
    title: Appstrings.adobe,
    roll: Appstrings.fullcourse,
    price: "800\$",
    rating: 5.0,
    hours: "147 Hours",
    people: "10k People",
    color: Appcolors.redColor,
    imageAsset: AppImages.banner4,
  ),
  CourseCardModel(
    title: Appstrings.java,
    price: "400\$",
    rating: 4.9,
    hours: "125 Hours",
    people: "7k People",
    color: Appcolors.mainColor,
    imageAsset: AppImages.banner5,
    roll: Appstrings.developer,
  ),
];
