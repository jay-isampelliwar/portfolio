import 'package:flutter/material.dart';
import 'package:portfolio/provider/container1.dart';
import 'package:portfolio/utils/web_colors.dart';
import 'package:provider/provider.dart';

import '../utils/text_styles.dart';

class Container1 extends StatefulWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

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
                      return Container(
                        margin: EdgeInsets.only(
                          left: value,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, my name is ",
                                  style:
                                      AppTextStyles.h4(bold: true, size: size)
                                          .copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) {
                                    return LinearGradient(stops: [
                                      _animation.value - 0.3,
                                      _animation.value,
                                      _animation.value + 0.3
                                    ], colors: [
                                      AppColors.secondary,
                                      AppColors.litePrimary,
                                      AppColors.footer
                                    ]).createShader(bounds);
                                  },
                                  child: Text("Jay Isampelliwar\n",
                                      style: AppTextStyles.h4(
                                              bold: true, size: size)
                                          .copyWith(
                                              color: AppColors.secondary)),
                                ),
                              ],
                            ),
                            Text(
                              "I'm Flutter Developer.",
                              style: AppTextStyles.h4(bold: true, size: size)
                                  .copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
