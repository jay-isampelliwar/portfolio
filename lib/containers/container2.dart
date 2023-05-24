import 'package:flutter/material.dart';
import 'package:portfolio/utils/text_styles.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.greenAccent,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
      child: Column(
        children: [
          Text(
            "About Me",
            style: AppTextStyles.text12(val: size.width * 0.03, bold: true),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.black38,
                height: size.height * 0.3,
                width: size.width * 0.2,
              ),
              Text(
                "This is where you can describe about yourself. The more you describe about yourself,\n the more chances you have!\nExtra Information about you! like hobbies and your goals",
                style: AppTextStyles.text12(val: size.height * 0.02),
              )
            ],
          )
        ],
      ),
    );
  }
}
