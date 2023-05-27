import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle h1(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.06,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h2(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.05,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h3(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.04,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h4(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.03,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h5(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.02,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h6(
      {bool light = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.01,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : light
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }
}
