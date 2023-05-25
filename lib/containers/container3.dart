import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';
import 'package:portfolio/widgets/project_container_widget.dart';

import '../utils/text_styles.dart';

class Container3 extends StatelessWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height,
      width: size.width,
      color: AppColors.primary,
      child: Column(children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          "PROJECTS",
          style: AppTextStyles.text12(
            val: size.width * 0.02,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          title: "Project Title 0",
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          title: "Project Title 0",
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          title: "Project Title 0",
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ProjectContainer(
          title: "Project Title 0",
          description:
              "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
      ]),
    );
  }
}
