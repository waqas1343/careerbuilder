import 'package:careerbuilder/model/course_lists/course_list.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/widgets/category_selector_widget/category_selector_widget.dart';
import 'package:careerbuilder/widgets/custom_appbar/custom_appbar_widget.dart';
import 'package:careerbuilder/widgets/custom_card_widget/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: CategoryList(
                  categories: [
                    Appstrings.uxui,
                    Appstrings.python,
                    Appstrings.marketing,
                    Appstrings.gamedev,
                    Appstrings.coding,
                    Appstrings.java,
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                children: [
                  CustomText(
                    text: Appstrings.courses,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.2.h,
                      color: Appcolors.greyColur,
                      indent: 4.w,
                      endIndent: 4.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              CourseHorizontalList(
                itemCount: courseList.length > 8 ? 8 : courseList.length,
                courseList: courseList,
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  CustomText(
                    text: Appstrings.lectures,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.2.h,
                      color: Appcolors.greyColur,
                      indent: 4.w,
                      endIndent: 4.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              CourseHorizontalList(
                itemCount: lectureList.length > 8 ? 8 : lectureList.length,
                courseList: lectureList,
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  CustomText(
                    text: Appstrings.onTop,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.2.h,
                      color: Appcolors.greyColur,
                      indent: 4.w,
                      endIndent: 4.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              CourseHorizontalList(
                itemCount: onTopList.length > 8 ? 8 : onTopList.length,
                courseList: onTopList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseHorizontalList extends StatelessWidget {
  final int itemCount;
  final List<dynamic> courseList;
  const CourseHorizontalList(
      {super.key, required this.itemCount, required this.courseList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: CustomCourseCard(course: courseList[index]),
          );
        },
      ),
    );
  }
}
