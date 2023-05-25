import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class PlainButton extends StatelessWidget {
  PlainButton(
      {this.bgColor = Colors.transparent,
      this.borderColor = Colors.white,
      this.textColor = Colors.white,
      super.key,
      required this.text});
  Color bgColor;
  Color borderColor;
  Color textColor;
  String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
      ),
      height: size.width * 0.035,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Align(
        child: Text(
          text,
          style: AppTextStyles.text12(
            bold: true,
            val: size.width * 0.016,
          ).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
