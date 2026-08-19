import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/modules/home/home_screen.dart';
import 'package:new_project/app/modules/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: AppColors.kWhiteColor),
          scrollBehavior:
              const MaterialScrollBehavior().copyWith(overscroll: false),
          debugShowCheckedModeBanner: false,
          title: 'Travel Africa',
          home: HomeScreen(),
        );
      },
    );
  }
}
