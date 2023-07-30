import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';

class MyLargeTile extends StatefulWidget {
  final VoidCallback onTap;
  final TravelPackageModel travelPackageModel;

  const MyLargeTile({
    super.key,
    required this.travelPackageModel,
    required this.onTap,
  });

  @override
  State<MyLargeTile> createState() => _MyLargeTileState();
}

class _MyLargeTileState extends State<MyLargeTile> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0.5,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        width: 140.w,
        child: Column(
          children: [
            Container(
              height: Get.height * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(widget.travelPackageModel.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.travelPackageModel.title,
                      style: AppTypography.kBold10
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    Text(
                      widget.travelPackageModel.subtitle,
                      style: AppTypography.kBold10
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                  child: Icon(
                    isPressed
                        ? Icons.favorite
                        : Icons.favorite_outline_outlined,
                    color: AppColors.kOrangeColor,
                    size: 20.sp,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
