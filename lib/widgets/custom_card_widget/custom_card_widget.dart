import 'package:careerbuilder/model/course_lists/course_list.dart';
import 'package:careerbuilder/model/course_model/course_listview_model.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCourseCard extends StatelessWidget {
  final CourseCardModel course;

  const CustomCourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      height: 30.h,
      margin: EdgeInsets.only(right: 3.w),
      padding: EdgeInsets.all(2.h),
      decoration: BoxDecoration(
        color: course.color,
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              course.imageAsset,
              height: 16.h,
              width: 16.h,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomText(
                      text: course.title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.black),
                ],
              ),
              CustomText(
                text: course.roll,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 2.h),
              CustomText(
                text: course.price,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  infoChip(context, Icons.star, course.rating.toString()),
                  infoChip(context, null, course.hours),
                  infoChip(context, null, course.people),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoChip(BuildContext context, IconData? icon, String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: Colors.white, size: 16.sp),
            SizedBox(width: 0.2.w),
          ],
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
