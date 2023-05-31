import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio/provider/container1.dart';
import 'package:portfolio/utils/web_colors.dart';
import 'package:portfolio/widgets/app_button.dart';
import 'package:provider/provider.dart';

import '../utils/text_styles.dart';
import '../widgets/social_media_icon.dart';

class Container1 extends StatefulWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Container1Provider>(
      builder: (context, value, child) {
        return SizedBox(
          width: size.width,
          child: Stack(
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 1),
                builder: (context, value, child) {
                  return AnimatedOpacity(
                    opacity: value,
                    duration: const Duration(milliseconds: 1500),
                    child: Image.asset(
                      "assets/images/me.png",
                      fit: BoxFit.fill,
                      width: size.width,
                      height: size.height,
                    ),
                  );
                },
              ),
              Positioned(
                top: size.height * 0.4,
                child: TweenAnimationBuilder(
                    onEnd: () {
                      value.setOpacity(1);
                    },
                    duration: const Duration(milliseconds: 1500),
                    tween: Tween<double>(begin: 0, end: size.width * 0.1),
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: value,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Hi, I am ",
                                      style: AppTextStyles.h4(
                                              bold: true, size: size)
                                          .copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    MouseRegion(
                                      onEnter: (event) {
                                        changeState(true);
                                      },
                                      onExit: (event) {
                                        changeState(false);
                                      },
                                      child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return LinearGradient(stops: const [
                                            0.2,
                                            1
                                          ], colors: [
                                            Colors.white,
                                            AppColors.gradientColor1
                                          ]).createShader(bounds);
                                        },
                                        child: Text("Jay Isampelliwar",
                                            style: AppTextStyles.h4(
                                              size: size,
                                              bold: true,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) {
                                    return LinearGradient(stops: const [
                                      0.6,
                                      1
                                    ], colors: [
                                      Colors.white,
                                      AppColors.gradientColor1
                                    ]).createShader(bounds);
                                  },
                                  child: Text(
                                    "A Flutter Developer",
                                    style: AppTextStyles.h5(
                                        size: size, lite: true),
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.02,
                                ),
                                Row(
                                  children: [
                                    SocialMediaIcon(
                                      path: "assets/svgs/github.svg",
                                      isGit: true,
                                      onClick: () {
                                        html.window.open(
                                            "https://github.com/jay-isampelliwar",
                                            "_blank");
                                      },
                                    ),
                                    SizedBox(
                                      width: size.width * 0.012,
                                    ),
                                    SocialMediaIcon(
                                      path: "assets/svgs/linkedin.svg",
                                      isGit: false,
                                      onClick: () {
                                        html.window.open(
                                            "https://www.linkedin.com/in/jay-isampelliwar21/",
                                            "_blank");
                                      },
                                    ),
                                    SizedBox(
                                      width: size.width * 0.012,
                                    ),
                                    SocialMediaIcon(
                                      path: "assets/svgs/instagram.svg",
                                      isGit: false,
                                      onClick: () {
                                        html.window.open(
                                            "https://www.instagram.com/___flutter_x/",
                                            "_blank");
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                AppButton(
                                  onTap: () {
                                    html.window.open(
                                        "https://drive.google.com/file/d/1n9Y-W5iSe452Va1wgtSO_1u9Bl4_umKn/view?usp=sharing",
                                        "_blank");
                                  },
                                  textColor: Colors.white,
                                  text: "View Resume",
                                  replaceTextColor: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }

  changeState(bool val) {
    setState(() {
      isHover = val;
    });
  }
}
