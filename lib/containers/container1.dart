import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';

import '../utils/text_styles.dart';
import '../widgets/app_button.dart';

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/me.png",
            fit: BoxFit.fill,
            width: size.width,
            height: size.height,
          ),
          Positioned(
            top: size.height * 0.5,
            child: TweenAnimationBuilder(
                duration: const Duration(milliseconds: 1500),
                tween: Tween<double>(begin: 0, end: size.width * 0.1),
                builder: (context, value, child) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: value,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hi, my name is ",
                                style: AppTextStyles.h4(bold: true, size: size)
                                    .copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: "Jay Isampelliwar\n",
                                style: AppTextStyles.h4(bold: true, size: size)
                                    .copyWith(color: AppColors.secondary),
                              ),
                              TextSpan(
                                text: "I'm Full Stack Flutter Developer.",
                                style: AppTextStyles.h4(bold: true, size: size)
                                    .copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppButton(
                          borderColor: AppColors.secondary,
                          textColor: AppColors.secondary,
                          replaceTextColor: Colors.white,
                          text: "Know more",
                          onTap: () {},
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
