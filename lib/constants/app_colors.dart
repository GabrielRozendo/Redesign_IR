import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor aliceblue =
      MaterialColor(_alicebluePrimaryValue, <int, Color>{
    50: Color(0xFFFDFEFF),
    100: Color(0xFFFAFDFE),
    200: Color(0xFFF7FCFE),
    300: Color(0xFFF3FAFD),
    400: Color(0xFFF1F9FC),
    500: Color(_alicebluePrimaryValue),
    600: Color(0xFFECF7FC),
    700: Color(0xFFE9F6FB),
    800: Color(0xFFE7F5FB),
    900: Color(0xFFE2F3FA),
  });
  static const int _alicebluePrimaryValue = 0xFFEEF8FC;

  static const MaterialColor aliceblueAccent =
      MaterialColor(_aliceblueAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_aliceblueAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _aliceblueAccentValue = 0xFFFFFFFF;

  static const MaterialColor celadonblue =
      MaterialColor(_celadonbluePrimaryValue, <int, Color>{
    50: Color(0xFFE9EFF3),
    100: Color(0xFFC8D8E0),
    200: Color(0xFFA3BECC),
    300: Color(0xFF7EA4B8),
    400: Color(0xFF6291A8),
    500: Color(_celadonbluePrimaryValue),
    600: Color(0xFF3F7591),
    700: Color(0xFF376A86),
    800: Color(0xFF2F607C),
    900: Color(0xFF204D6B),
  });
  static const int _celadonbluePrimaryValue = 0xFF467D99;

  static const MaterialColor celadonblueAccent =
      MaterialColor(_celadonblueAccentValue, <int, Color>{
    100: Color(0xFF6ADEFF),
    200: Color(_celadonblueAccentValue),
    400: Color(0xFF14CBFF),
    700: Color(0xFF04C8FF),
  });
  static const int _celadonblueAccentValue = 0xFF2DD1FF;

  static const MaterialColor steelblue =
      MaterialColor(_steelbluePrimaryValue, <int, Color>{
    50: Color(0xFFEBF1F5),
    100: Color(0xFFCCDDE6),
    200: Color(0xFFABC6D5),
    300: Color(0xFF89AFC4),
    400: Color(0xFF6F9DB8),
    500: Color(_steelbluePrimaryValue),
    600: Color(0xFF4F84A4),
    700: Color(0xFF45799A),
    800: Color(0xFF3C6F91),
    900: Color(0xFF2B5C80),
  });
  static const int _steelbluePrimaryValue = 0xFF568CAB;

  static const MaterialColor steelblueAccent =
      MaterialColor(_steelblueAccentValue, <int, Color>{
    100: Color(0xFF8BDFFF),
    200: Color(_steelblueAccentValue),
    400: Color(0xFF34C7FF),
    700: Color(0xFF25C3FF),
  });
  static const int _steelblueAccentValue = 0xFF4ECEFF;

  static const MaterialColor eerieblack =
      MaterialColor(_eerieblackPrimaryValue, <int, Color>{
    50: Color(0xFFE5E5E5),
    100: Color(0xFFBDBDBD),
    200: Color(0xFF929292),
    300: Color(0xFF666666),
    400: Color(0xFF454545),
    500: Color(_eerieblackPrimaryValue),
    600: Color(0xFF202020),
    700: Color(0xFF1B1B1B),
    800: Color(0xFF161616),
    900: Color(0xFF0D0D0D),
  });
  static const int _eerieblackPrimaryValue = 0xFF242424;

  static const MaterialColor eerieblackAccent =
      MaterialColor(_eerieblackAccentValue, <int, Color>{
    100: Color(0xFFE62222),
    200: Color(_eerieblackAccentValue),
    400: Color(0xFFB10000),
    700: Color(0xFFA20000),
  });
  static const int _eerieblackAccentValue = 0xFFB71414;

  static const MaterialColor azure =
      MaterialColor(_azurePrimaryValue, <int, Color>{
    50: Color(0xFFE0EFFF),
    100: Color(0xFFB3D7FF),
    200: Color(0xFF80BDFF),
    300: Color(0xFF4DA3FF),
    400: Color(0xFF268FFF),
    500: Color(_azurePrimaryValue),
    600: Color(0xFF0073FF),
    700: Color(0xFF0068FF),
    800: Color(0xFF005EFF),
    900: Color(0xFF004BFF),
  });
  static const int _azurePrimaryValue = 0xFF007BFF;

  static const MaterialColor azureAccent =
      MaterialColor(_azureAccentValue, <int, Color>{
    100: Color(0xFFCFE3FF),
    200: Color(_azureAccentValue),
    400: Color(0xFF79AFFF),
    700: Color(0xFF69A6FF),
  });
  static const int _azureAccentValue = 0xFF92BEFF;

  static const MaterialColor erin =
      MaterialColor(_erinPrimaryValue, <int, Color>{
    50: Color(0xFFE0FFEB),
    100: Color(0xFFB3FFCE),
    200: Color(0xFF80FFAD),
    300: Color(0xFF4DFF8C),
    400: Color(0xFF26FF73),
    500: Color(_erinPrimaryValue),
    600: Color(0xFF00FF52),
    700: Color(0xFF00FF48),
    800: Color(0xFF00FF3F),
    900: Color(0xFF00FF2E),
  });
  static const int _erinPrimaryValue = 0xFF00FF5A;

  static const MaterialColor erinAccent =
      MaterialColor(_erinAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_erinAccentValue),
    400: Color(0xFFB7FFB3),
    700: Color(0xFFA8FFA4),
  });
  static const int _erinAccentValue = 0xFFCFFFCC;

  static const MaterialColor richblackfogra =
      MaterialColor(_richblackfograPrimaryValue, <int, Color>{
    50: Color(0xFFE2E2E2),
    100: Color(0xFFB7B7B7),
    200: Color(0xFF878787),
    300: Color(0xFF575757),
    400: Color(0xFF333333),
    500: Color(_richblackfograPrimaryValue),
    600: Color(0xFF0D0D0D),
    700: Color(0xFF0B0B0B),
    800: Color(0xFF080808),
    900: Color(0xFF040404),
  });
  static const int _richblackfograPrimaryValue = 0xFF0F0F0F;

  static const MaterialColor richblackfograAccent =
      MaterialColor(_richblackfograAccentValue, <int, Color>{
    100: Color(0xFFF90000),
    200: Color(_richblackfograAccentValue),
    400: Color(0xFFA30000),
    700: Color(0xFF930000),
  });
  static const int _richblackfograAccentValue = 0xFFBC0000;
}
