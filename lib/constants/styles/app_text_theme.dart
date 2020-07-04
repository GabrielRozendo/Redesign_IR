import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redesign_ir/constants/app_colors.dart';

import 'app_text_styles.dart';

class AppTextTheme {
  AppTextTheme._();

  static final _appTextStyles = AppTextStyles();

  static TextTheme get lightTextTheme => TextTheme(
        headline1: _appTextStyles.title1.c(AppColors.eerieblack),
        headline2: _appTextStyles.title2.c(AppColors.eerieblack),
        headline3: _appTextStyles.title3.c(AppColors.steelblue),
        headline4: _appTextStyles.title4.c(AppColors.steelblue),
        subtitle1: _appTextStyles.subtitle.c(AppColors.celadonblue),
        caption: _appTextStyles.caption.c(AppColors.steelblue),
        bodyText2: _appTextStyles.body.c(AppColors.steelblue),
        button: _appTextStyles.button.c(Colors.white),
      );

  static TextTheme get darkTextTheme => TextTheme(
        headline1: _appTextStyles.title1.c(AppColors.aliceblue),
        headline2: _appTextStyles.title2.c(AppColors.aliceblue),
        headline3: _appTextStyles.title3.c(AppColors.steelblue),
        headline4: _appTextStyles.title4.c(AppColors.steelblue),
        subtitle1: _appTextStyles.subtitle.c(AppColors.aliceblue),
        caption: _appTextStyles.caption.c(AppColors.steelblue),
        bodyText2: _appTextStyles.body.c(AppColors.steelblue),
        button: _appTextStyles.button.c(Colors.white),
      );
}

extension TextStyleHelpers on TextStyle {
  TextStyle c(Color value) => copyWith(color: value);
}
