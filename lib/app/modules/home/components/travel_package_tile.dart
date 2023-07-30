import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';

class MyTravelPackageTile extends StatefulWidget {
  final VoidCallback onTap;
  final TravelPackageModel travelPackageModel;
  const MyTravelPackageTile(
      {super.key, required this.travelPackageModel, required this.onTap});

  @override
  State<MyTravelPackageTile> createState() => _MyTravelPackageTileState();
}

class _MyTravelPackageTileState extends State<MyTravelPackageTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        height: 100.h,
        width: 190.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0.5,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.travelPackageModel.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                )
              ],
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.travelPackageModel.title,
                  style: AppTypography.kBold12,
                ),
                Text(
                  widget.travelPackageModel.subtitle,
                  style: AppTypography.kBold10
                      .copyWith(color: AppColors.kGreyColor),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 10.sp),
                    SizedBox(width: 5.w),
                    Text(
                      widget.travelPackageModel.rating,
                      style: AppTypography.kMedium10
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "See Online",
                      style: AppTypography.kBold8.copyWith(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
