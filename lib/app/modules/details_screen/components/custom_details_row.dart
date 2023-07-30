import 'package:flutter/material.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';

class CustomDetailsRow extends StatelessWidget {
  const CustomDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "African Travel",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "|",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "7 Day and Nights",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "|",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "5 Star Hotel",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "|",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
        Text(
          "2 Person",
          style: AppTypography.kMedium10.copyWith(
            color: AppColors.kGreyColor,
          ),
        ),
      ],
    );
  }
}
