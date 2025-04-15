import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_icons/app_icons.dart';
import 'package:careerbuilder/utils/constant/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.bgColor,
      elevation: 0,
      leadingWidth: 18.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 4.w),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 8.h,
              backgroundImage: AssetImage(AppImages.onBoarding1),
            ),
            Positioned(
              top: 4.h,
              right: -1.w,
              child: Container(
                height: 2.h,
                width: 1.8.h,
                decoration: BoxDecoration(
                  color: Appcolors.mainColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        'Hello, Waqas',
        style: TextStyle(
          color: Appcolors.lightgrey,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              AppIcons.notificationIcon,
              Positioned(
                top: 1.h,
                right: 4.w,
                child: Container(
                  height: 1.5.h,
                  width: 1.5.h,
                  decoration: BoxDecoration(
                    color: Appcolors.mainColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
