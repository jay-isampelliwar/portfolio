import 'package:flutter/material.dart';
import 'package:portfolio/provider/container1.dart';
import 'package:portfolio/utils/web_colors.dart';
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
              AnimatedOpacity(
                opacity: value.opacity,
                duration: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/me.png",
                  fit: BoxFit.fill,
                  width: size.width,
                  height: size.height,
                ),
              ),
              Positioned(
                top: size.height * 0.5,
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
                                      child: Text("Jay Isampelliwar",
                                          style: AppTextStyles.h3(
                                                  bold: true, size: size)
                                              .copyWith(shadows: [
                                            Shadow(
                                                offset: isHover
                                                    ? const Offset(-1, -1)
                                                    : Offset.zero,
                                                color: AppColors.gradientColor2,
                                                blurRadius: isHover ? 2 : 0),
                                            Shadow(
                                                offset: isHover
                                                    ? const Offset(1, 1)
                                                    : Offset.zero,
                                                color: AppColors.gradientColor2,
                                                blurRadius: isHover ? 2 : 0)
                                          ])),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SocialMediaIcon(
                                      path: "assets/svgs/github.svg",
                                      onClick: () {},
                                    ),
                                    SizedBox(
                                      width: size.width * 0.012,
                                    ),
                                    SocialMediaIcon(
                                      path: "assets/svgs/linkedin.svg",
                                      onClick: () {},
                                    ),
                                    SizedBox(
                                      width: size.width * 0.012,
                                    ),
                                    SocialMediaIcon(
                                      path: "assets/svgs/instagram.svg",
                                      onClick: () {},
                                    ),
                                  ],
                                ),
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
