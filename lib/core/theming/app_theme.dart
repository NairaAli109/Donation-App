import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: AppStrings.almaraiFont,
    scaffoldBackgroundColor:  AppColors.backgroundColor,
    useMaterial3: false,
  );
}