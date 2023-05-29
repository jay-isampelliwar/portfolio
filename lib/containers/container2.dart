import 'package:flutter/material.dart';

import 'package:portfolio/utils/text_styles.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(
        vertical: size.width * 0.04,
      ),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        children: [
          Text(
            "ABOUT ME",
            style: AppTextStyles.h4(
              size: size,
              bold: true,
            ),
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SUMMARY",
                      style: AppTextStyles.h5(size: size),
                    ),
                    SizedBox(
                      height: size.width * 0.02,
                    ),
                    Text(
                      "I am a junior Flutter developer, passionate about creating innovative and engaging mobile applications. With a strong foundation in programming and a keen interest in mobile development, I have embarked on a journey to master the Flutter framework.",
                      textAlign: TextAlign.justify,
                      style: AppTextStyles.h6(size: size),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EDUCATION",
                      style: AppTextStyles.h5(size: size),
                    ),
                    SizedBox(
                      height: size.width * 0.02,
                    ),
                    Text(
                      "I recently completed B.Tech degree from Rajiv Gandhi College of Engineering Research and Technology. Specialized in Computer Science Engineering and gained hands-on experience through projects and coursework. I look forward to utilizing my education and experiences to tackle challenges, drive innovation, and contribute to the ever-evolving world of technology.",
                      textAlign: TextAlign.justify,
                      style: AppTextStyles.h6(size: size),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
