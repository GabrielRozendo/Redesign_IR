import 'package:flutter/material.dart';

import 'constants/styles/app_theme.dart';
import 'modules/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // themeMode: ThemeMode.light,
      home: HomePage(),
    ),
  );
}
