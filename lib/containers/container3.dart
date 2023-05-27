import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_container_widget.dart';

import '../utils/text_styles.dart';

class Container3 extends StatelessWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.amber,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.06),
      child: Column(children: [
        Text(
          "PROJECTS",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
          title: "PROJECT TITLE 0",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
          title: "PROJECT TITLE 0",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
          title: "PROJECT TITLE 0",
        )
      ]),
    );
  }
}
