import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
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
                          style: AppTextStyles.text12(
                            bold: true,
                            val: 44,
                          ).copyWith(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Jay Isampelliwar\n",
                          style: AppTextStyles.text12(
                            bold: true,
                            val: 44,
                          ).copyWith(
                            color: Colors.greenAccent,
                          ),
                        ),
                        TextSpan(
                          text: "I'm Full Stack Flutter Developer.",
                          style: AppTextStyles.text12(
                            bold: true,
                            val: 44,
                          ).copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.04,
                    ),
                    height: size.height * 0.07,
                    width: size.width * 0.185,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.greenAccent, width: 2),
                    ),
                    child: Align(
                      child: Text(
                        "Know more",
                        style: AppTextStyles.text12(
                          bold: true,
                          val: 22,
                        ).copyWith(
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
