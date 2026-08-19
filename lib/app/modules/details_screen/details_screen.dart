import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';
import 'package:new_project/app/modules/details_screen/components/custom_details_row.dart';

class DetailsScreen extends StatefulWidget {
  final TravelPackageModel detailsScreenModel;
  const DetailsScreen({super.key, required this.detailsScreenModel});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          splashRadius: 1,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kWhiteColor,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Container(
                height: Get.height * 0.55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
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
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.detailsScreenModel.title,
                            style: AppTypography.kBold22),
                        Text(widget.detailsScreenModel.price,
                            style: AppTypography.kBold22),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Icon(Icons.star,
                            color: AppColors.kYellowColor, size: 15.r),
                        SizedBox(width: 5.w),
                        Text(
                          widget.detailsScreenModel.subtitle,
                          style: AppTypography.kMedium10.copyWith(
                            color: AppColors.kGreyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      widget.detailsScreenModel.packageDetails,
                      style: AppTypography.kMedium10
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      widget.detailsScreenModel.description,
                      style: AppTypography.kMedium10.copyWith(
                        color: AppColors.kBlackColor.withOpacity(0.7),
                      ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
