import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static TextStyle text12(
      {bool light = false, bool bold = false, required double val}) {
    return TextStyle(fontSize: val, fontWeight: FontWeight.bold
        // fontFamily: bold
        //     ? "assets/fonts/Montserrat-Bold.ttf"
        //     : light
        //         ? "assets/fonts/Montserrat-Light.ttf"
        //         : "assets/fonts/Montserrat-Regular.ttf",
        );
  }
}
