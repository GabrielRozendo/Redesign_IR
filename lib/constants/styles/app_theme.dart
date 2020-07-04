import 'package:flutter/material.dart';
import 'package:redesign_ir/constants/styles/app_card_theme.dart';
import '../app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.azure,
        accentColor: AppColors.celadonblue,
        backgroundColor: AppColors.aliceblue,
        scaffoldBackgroundColor: AppColors.aliceblue,
        primaryTextTheme: AppTextTheme.lightTextTheme,
        cardTheme: AppCardTheme.lightCardTheme,
        cardColor: AppCardTheme.lightCardTheme.color,
        dividerColor: AppColors.celadonblue,
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.azure,
        accentColor: AppColors.aliceblue,
        backgroundColor: AppColors.richblackfogra,
        scaffoldBackgroundColor: AppColors.richblackfogra,
        primaryTextTheme: AppTextTheme.darkTextTheme,
        cardTheme: AppCardTheme.darkCardTheme,
        cardColor: AppCardTheme.darkCardTheme.color,
        dividerColor: AppColors.celadonblue,
      );
}
