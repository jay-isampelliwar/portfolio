import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle text12(
      {bool light = false,
      bool bold = false,
      required double val,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: val,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }
}
