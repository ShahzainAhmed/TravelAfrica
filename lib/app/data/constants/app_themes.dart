import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/app/data/constants/app_colors.dart';

class Themes {
  static ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.kTransparentColor),
    scaffoldBackgroundColor: AppColors.kWhiteColor,
    shadowColor: AppColors.kTransparentColor,
  );
}

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemStatusBarContrastEnforced: false,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.transparent,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);
