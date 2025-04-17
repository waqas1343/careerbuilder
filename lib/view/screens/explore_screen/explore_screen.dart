import 'package:careerbuilder/model/course_model/course_listview_model.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_icons/app_icons.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/utils/constant/custom_textfield/custom_textield.dart';
import 'package:careerbuilder/view_model/validators/validators.dart';
import 'package:careerbuilder/widgets/category_selector_widget/category_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExploreScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final String? name;
  ExploreScreen({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextFields.customTextField(
                borderColor: Appcolors.greyColur,
                borderRadius: 50,
                fillColor: Appcolors.bgColor,
                prefixIcon: AppIcons.searchIcon,
                suffixIcon: AppIcons.menuIcon,
                hintText: 'Search',
                controller: searchController,
                validator: Validators.emailValidation,
              ),
              SizedBox(height: 2.h),
              CustomText(
                text: Appstrings.popularSearch,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Appcolors.mainColor),
              ),
              SizedBox(height: 2.h),
              CategoryList(
                categories: [
                  Appstrings.uxui,
                  Appstrings.java,
                  Appstrings.cPlus,
                  Appstrings.marketing,
                  Appstrings.figmaJam,
                  Appstrings.portFolio,
                ],
              ),
              SizedBox(height: 1.5.h),
              CustomText(
                text: Appstrings.categories,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Appcolors.mainColor),
              ),
              SizedBox(height: 1.h),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ...allCoursesList.map((course) {
                      return ListTile(
                        dense: true,
                        minTileHeight: 0.0,
                        contentPadding: EdgeInsets.all(0),
                        title: Text(
                          course["title"]!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                        onTap: () {},
                      );
                    }),
                    SizedBox(height: 1.h),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See all →",
                        style: TextStyle(
                          color: Colors.limeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
