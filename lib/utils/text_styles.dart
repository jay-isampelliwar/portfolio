import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle h1(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.06,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h2(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.05,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h3(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.04,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h4(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.03,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h5(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.02,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }

  static TextStyle h6(
      {bool lite = false,
      bool bold = false,
      required Size size,
      Color color = Colors.white}) {
    return TextStyle(
      fontSize: size.width * 0.014,
      color: color,
      fontWeight: bold
          ? FontWeight.bold
          : lite
              ? FontWeight.w100
              : FontWeight.normal,
    );
  }
}
