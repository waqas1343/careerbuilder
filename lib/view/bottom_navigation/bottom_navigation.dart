import 'package:careerbuilder/view/screens/homePage/home_page.dart';
import 'package:careerbuilder/view_model/Controller/bottom_navigation_controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class BottomNavScreen extends StatelessWidget {
  final List<Widget> pages = [
    Center(child: HomePage()),
    Center(child: Text("Search Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("Shield Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("Jobs Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile Page", style: TextStyle(color: Colors.white))),
  ];

   BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavigationProvider>(context);

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: pages[navProvider.currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 2.h),
        child: Container(
          height: 8.h,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildIcon(Icons.home, 0, navProvider),
              buildIcon(Icons.search, 1, navProvider),
              buildIcon(Icons.shield, 2, navProvider),
              buildIcon(Icons.work_outline, 3, navProvider),
              buildIcon(Icons.person_outline, 4, navProvider),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon(IconData icon, int index, NavigationProvider navProvider) {
    final isSelected = index == navProvider.currentIndex;

    return GestureDetector(
      onTap: () => navProvider.setIndex(index),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.grey,
        size: isSelected ? 24.sp : 20.sp,
      ),
    );
  }
}
