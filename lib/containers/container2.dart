import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/utils/web_colors.dart';

import '../widgets/app_button.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                style: AppTextStyles.h4(
                  size: size,
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
                        style: AppTextStyles.h6(size: size),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      AppButton(
                        text: "View Resume",
                        replaceTextColor: AppColors.secondary,
                        textColor: Colors.white,
                        onTap: () {
                          html.window.open(
                            "https://drive.google.com/file/d/1n9Y-W5iSe452Va1wgtSO_1u9Bl4_umKn/view?usp=share_link",
                            "_blank",
                          );
                        },
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
