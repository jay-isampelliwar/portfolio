import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_card.dart';

import '../utils/text_styles.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      children: [
        Text(
          "SKILLS",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.width * 0.01,
        ),
        Text(
          "What I Can Do",
          style: AppTextStyles.h5(
            size: size,
            lite: true,
          ),
        ),
        SizedBox(
          height: size.width * 0.04,
        ),
        Wrap(
          spacing: size.width * 0.01,
          children: [
            SkillCard(
              onClick: () {},
              path: "assets/svgs/flutter.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/dart.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/node-js.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/java.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/javaScript.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/mongodb.svg",
            ),
            SkillCard(
              onClick: () {},
              path: "assets/svgs/github.svg",
            ),
          ],
        ),
      ],
    ));
  }
}
