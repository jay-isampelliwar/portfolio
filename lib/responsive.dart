import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({required this.desktop, required this.mobile, super.key});
  final Widget mobile;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return desktop;
      } else {
        return mobile;
      }
    });
  }
}
