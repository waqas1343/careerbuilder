import 'package:careerbuilder/utils/constant/app_icons/app_icons.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/view_model/Controller/calender_provider/calender_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalendarProvider>(context);
    final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    final dates = provider.currentWeek;

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(1.h),
                child: AppIcons.leftArrowIcon,
              ),
              CustomText(
                text: Appstrings.calendar,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                padding: EdgeInsets.all(1.h),
                child: AppIcons.rightArrowIcon,
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(7, (index) {
              final date = dates[index];
              final isSelected = date.day == provider.selectedDate.day &&
                  date.month == provider.selectedDate.month;

              return GestureDetector(
                onTap: () => provider.selectDate(date),
                child: Container(
                  width: 12.w,
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(5.w),
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        text: weekDays[index],
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: isSelected ? Colors.black : Colors.white,
                            ),
                      ),
                      SizedBox(height: 0.8.h),
                      CustomText(
                        text: '${date.day}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: isSelected ? Colors.black : Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
