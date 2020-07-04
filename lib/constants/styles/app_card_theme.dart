import 'package:flutter/material.dart';
import '../app_colors.dart';

class AppCardTheme {
  AppCardTheme._();

  static CardTheme _cardTheme(bool isDark) => CardTheme(
        color: isDark ? AppColors.eerieblack : Colors.white,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: AppColors.aliceblue, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static CardTheme get lightCardTheme => _cardTheme(false);

  static CardTheme get darkCardTheme => _cardTheme(true);
}
