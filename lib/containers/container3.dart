import 'dart:html' as html;
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
          height: size.width * 0.04,
        ),
        Wrap(
          spacing: size.width * 0.01,
          children: [
            SkillCard(
              onClick: () {
                html.window.open("https://flutter.dev/", "_blank");
              },
              path: "assets/svgs/flutter.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://dart.dev/", "_blank");
              },
              path: "assets/svgs/dart.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://nodejs.org/en", "_blank");
              },
              path: "assets/svgs/node-js.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://www.java.com/en/", "_blank");
              },
              path: "assets/svgs/java.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://www.javascript.com/", "_blank");
              },
              path: "assets/svgs/javaScript.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://www.mongodb.com/  ", "_blank");
              },
              path: "assets/svgs/mongodb.svg",
            ),
            SkillCard(
              onClick: () {
                html.window.open("https://github.com/", "_blank");
              },
              path: "assets/svgs/github.svg",
            ),
          ],
        ),
      ],
    ));
  }
}
