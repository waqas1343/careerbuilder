import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/view_model/Controller/category_selector_controller/category_selector_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;

  const CategoryList({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    final selectedCategory = context.watch<CategoryProvider>().selectedCategory;

    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: categories.map((category) {
        final isSelected = selectedCategory == category;

        return GestureDetector(
          onTap: () {
            context.read<CategoryProvider>().selectCategory(category);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: isSelected ? Appcolors.mainColor : Colors.grey,
              ),
              color: isSelected ? Appcolors.mainColor : Colors.transparent,
            ),
            child: CustomText(
              text: category,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                color: isSelected ? Appcolors.textColor : Appcolors.greyColur,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
