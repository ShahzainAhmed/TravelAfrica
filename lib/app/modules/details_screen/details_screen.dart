import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';

class DetailsScreen extends StatefulWidget {
  final TravelPackageModel detailsScreenModel;

  const DetailsScreen({
    super.key,
    required this.detailsScreenModel,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      // APP BAR
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   leading: IconButton(
      //     onPressed: () => Get.back(),
      //     icon: const Icon(
      //       Icons.arrow_back_ios_new,
      //       color: AppColors.kWhiteColor,
      //     ),
      //   ),
      // ),

      // BODY
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(height: 50.h),

              // IMAGE
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                delay: const Duration(milliseconds: 150),
                from: 25,
                child: Container(
                  height: Get.height * 0.55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.4),
                        blurRadius: 10.r,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.r),
                    image: DecorationImage(
                      image: AssetImage(widget.detailsScreenModel.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    // TITLE + PRICE
                    FadeInUp(
                      duration: const Duration(milliseconds: 1100),
                      delay: const Duration(milliseconds: 450),
                      from: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.detailsScreenModel.title,
                            style: AppTypography.kBold22,
                          ),
                          Text(
                            widget.detailsScreenModel.price,
                            style: AppTypography.kBold22,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.h),

                    // SUBTITLE
                    FadeInUp(
                      duration: const Duration(milliseconds: 1100),
                      delay: const Duration(milliseconds: 650),
                      from: 12,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.kYellowColor,
                            size: 15.r,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            widget.detailsScreenModel.subtitle,
                            style: AppTypography.kMedium10.copyWith(
                              color: AppColors.kGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14.h),

                    // DESCRIPTION
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      delay: const Duration(milliseconds: 1050),
                      from: 12,
                      child: Text(
                        widget.detailsScreenModel.description,
                        style: AppTypography.kMedium10.copyWith(
                          color: AppColors.kBlackColor.withValues(alpha: 0.7),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 14.h),

                    // PACKAGE DETAILS
                    FadeInUp(
                      duration: const Duration(milliseconds: 1100),
                      delay: const Duration(milliseconds: 850),
                      from: 12,
                      child: Text(
                        widget.detailsScreenModel.packageDetails,
                        style: AppTypography.kMedium10.copyWith(
                          color: AppColors.kGreyColor,
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

      // BOTTOM BOOK BUTTON
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          height: 50.h,
          width: Get.width,
          margin: EdgeInsets.symmetric(vertical: 20.h),
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Text(
              "Book Now",
              style: AppTypography.kBold14.copyWith(
                color: AppColors.kWhiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
