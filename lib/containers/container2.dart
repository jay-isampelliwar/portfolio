import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/utils/web_colors.dart';
import 'package:portfolio/widgets/plain_button.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.primary,
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/svgs/b2.svg",
            width: size.width,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "ABOUT ME",
                style: AppTextStyles.text12(
                  val: size.width * 0.02,
                  bold: true,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.width * 0.2,
                    width: size.width * 0.2,
                    color: AppColors.primary,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This is where you can describe about yourself. The more you describe about \nyourself, the more chances you have!\nExtra Information about you! like hobbies and your goals.",
                        style: AppTextStyles.text12(val: size.width * 0.01),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      PlainButton(
                        bgColor: Colors.transparent,
                        text: "View Resume",
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
