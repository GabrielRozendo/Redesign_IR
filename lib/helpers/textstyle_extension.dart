import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension TextStyleHelpers on TextStyle {
  TextStyle get bold {
    final newIndex = min(FontWeight.values.length, this.fontWeight.index + 1);
    return copyWith(fontWeight: FontWeight.values[newIndex]);
  }

  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w900);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  // TextStyle c(Color value) => copyWith(color: value);
  // TextStyle letterSpacing(double value) => copyWith(letterSpacing: value);
  TextStyle get error => copyWith(
        decoration: TextDecoration.lineThrough,
        color: Colors.red,
      );
}

extension CustomStyles on TextTheme {
  // TextStyle get error => copyWith(Tex)

}
