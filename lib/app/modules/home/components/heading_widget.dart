import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/modules/travel_package/travel_package_screen.dart';

class MyHeadingWidget extends StatelessWidget {
  final String title;
  const MyHeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Travel $title", style: AppTypography.kExtraBold14),
          TextButton(
            style: ButtonStyle(
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => Get.to(const TravelPackageScreen()),
            child: Text(
              "See More",
              style:
                  AppTypography.kBold12.copyWith(color: AppColors.kGreyColor),
            ),
          ),
        ],
      ),
    );
  }
}
