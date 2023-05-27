import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/utils/web_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.footer,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.06),
      child: Align(
        child: Column(children: [
          Icon(
            Icons.arrow_upward_rounded,
            size: size.width * 0.03,
            color: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              SvgPicture.asset(
                "assets/svgs/twitter.svg",
                height: size.width * 0.03,
                width: size.width * 0.03,
                color: Colors.white,
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              SvgPicture.asset(
                "assets/svgs/linkedin.svg",
                height: size.width * 0.03,
                width: size.width * 0.03,
                color: Colors.white,
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              SvgPicture.asset(
                "assets/svgs/github.svg",
                height: size.width * 0.03,
                width: size.width * 0.03,
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: size.width * 0.01,
          ),
          Divider(
            indent: size.width * 0.3,
            endIndent: size.width * 0.3,
            color: HexColor("#464646"),
          ),
          SizedBox(
            height: size.width * 0.01,
          ),
          Text(
            "© 2023 - Template developed by Jay Isampelliwar",
            style: AppTextStyles.h6(size: size),
          ),
        ]),
      ),
    );
  }
}
