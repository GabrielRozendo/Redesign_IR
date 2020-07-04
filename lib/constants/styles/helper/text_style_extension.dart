import 'package:flutter/material.dart';

extension TextStyleHelpers on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  // TextStyle c(Color value) => copyWith(color: value);
  TextStyle letterSpacing(double value) => copyWith(letterSpacing: value);
  // TextStyle get error => copyWith(
  //       decoration: TextDecoration.lineThrough,
  //       color: Colors.red,
  //     );
}

extension CustomStyles on TextTheme {
  TextStyle get aa => TextStyle();
}
