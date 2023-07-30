import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_project/app/data/constants/app_assets.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';
import 'package:new_project/app/modules/details_screen/details_screen.dart';
import 'package:new_project/app/modules/home/components/heading_widget.dart';
import 'package:new_project/app/modules/home/components/picture_large_tile.dart';
import 'package:new_project/app/modules/home/components/textformwidget.dart';
import 'package:new_project/app/modules/home/components/travel_package_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu, color: Colors.amber),
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
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "let's go \ntrip to africa",
              style: AppTypography.kBold30,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 0.5,
                        blurRadius: 8,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: Get.width * 0.75,
                  child: CustomTextFormWidget(
                    title: "",
                    myIcon: const Icon(Icons.search),
                    controller: TextEditingController(),
                    hintText: "",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 0.5,
                          blurRadius: 8,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Icon(Icons.menu, color: AppColors.kWhiteColor),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            const MyHeadingWidget(title: "Places"),
            SizedBox(height: 10.h),
            SizedBox(
              height: 190.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: myTravelPackageList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          MyLargeTile(
                              travelPackageModel: myTravelPackageList[index],
                              onTap: () => Get.to(DetailsScreen(
                                    detailsScreenModel:
                                        myTravelPackageList[index],
                                  ))),
                          SizedBox(width: 20.w),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
            const MyHeadingWidget(title: "Packages"),
            SizedBox(height: 10.h),
            SizedBox(
              height: 190.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: myTravelPackageList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          MyTravelPackageTile(
                            onTap: () => Get.to(DetailsScreen(
                              detailsScreenModel: myTravelPackageList[index],
                            )),
                            travelPackageModel: myTravelPackageList[index],
                          ),
                          SizedBox(width: 20.w),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 100.h)
          ],
        ),
      ),
    );
  }
}
