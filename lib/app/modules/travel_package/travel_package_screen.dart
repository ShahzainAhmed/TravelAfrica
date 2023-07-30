import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_project/app/data/constants/app_assets.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';
import 'package:new_project/app/modules/details_screen/details_screen.dart';
import 'package:new_project/app/modules/home/components/textformwidget.dart';
import 'package:new_project/app/modules/travel_package/components/package_tiles.dart';

class TravelPackageScreen extends StatefulWidget {
  const TravelPackageScreen({super.key});

  @override
  State<TravelPackageScreen> createState() => _TravelPackageScreenState();
}

class _TravelPackageScreenState extends State<TravelPackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.amber,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello Shahzain",
                  style: AppTypography.kBold12
                      .copyWith(color: AppColors.kGreyColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 10.sp,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Dubai, UAE",
                      style: AppTypography.kBold12
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              foregroundImage: AssetImage(AppAssets.kAvatar),
            )
          ],
        ),
        leadingWidth: 0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              height: 45.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 8,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: Get.width,
              child: CustomTextFormWidget(
                title: "",
                myIcon: const Icon(Icons.search),
                controller: TextEditingController(),
                hintText: "",
              ),
            ),
            SizedBox(height: 20.h),
            Text("Travel Packages", style: AppTypography.kExtraBold16),
            SizedBox(height: 20.h),
            SizedBox(
              height: Get.height * 0.8,
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 100.h),
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: myTravelPackageList.length,
                itemBuilder: (context, index) {
                  return TravelPackageTiles(
                    onTap: () => Get.to(DetailsScreen(
                      detailsScreenModel: myTravelPackageList[index],
                    )),
                    travelPackageModel: myTravelPackageList[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
