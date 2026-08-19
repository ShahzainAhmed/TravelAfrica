import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/modules/home/home_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const HomeScreen(), // index 1
    const HomeScreen(), // index 2
    const HomeScreen(), // index 3
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 102.h,
        child: FloatingNavbar(
          selectedBackgroundColor: Colors.black,
          iconSize: 20.sp,
          backgroundColor: Colors.black,
          borderRadius: 500.r,
          itemBorderRadius: 500.r,
          selectedItemColor: Colors.amber,
          unselectedItemColor: AppColors.kGreyColor,
          items: [
            FloatingNavbarItem(icon: Icons.home_filled),
            FloatingNavbarItem(icon: Icons.edit_document),
            FloatingNavbarItem(icon: Icons.pin_drop_outlined),
            FloatingNavbarItem(icon: Icons.person_outline_outlined),
          ],
          currentIndex: _currentIndex,
          onTap: (int val) => setState(() => _currentIndex = val),
        ),
      ),
    );
  }
}
