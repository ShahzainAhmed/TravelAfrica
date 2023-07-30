import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';
import 'package:new_project/app/models/travel_package_model.dart';

class TravelPackageTiles extends StatefulWidget {
  final VoidCallback onTap;
  final TravelPackageModel travelPackageModel;
  const TravelPackageTiles({
    super.key,
    required this.travelPackageModel,
    required this.onTap,
  });

  @override
  State<TravelPackageTiles> createState() => _TravelPackageTilesState();
}

class _TravelPackageTilesState extends State<TravelPackageTiles> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            height: 135.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.kBlackColor.withOpacity(0.2),
                  blurRadius: 5.r,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(widget.travelPackageModel.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    widget.travelPackageModel.title,
                    style: AppTypography.kBold16.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  subtitle: Text(
                    widget.travelPackageModel.subtitle,
                    style: AppTypography.kMedium12.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.kWhiteColor,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: Icon(
                          isPressed ? Icons.favorite : Icons.favorite_outline,
                          color: AppColors.kOrangeColor,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
