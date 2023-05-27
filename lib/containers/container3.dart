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
      width: size.width,
      height: size.height,
      color: AppColors.primary,
      child: Column(children: [
        SizedBox(
          height: size.height * 0.03,
        ),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    ProjectContainer(
                      description:
                          "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
                      title: "PROJECT TITLE 0",
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    ProjectContainer(
                      description:
                          "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
                      title: "PROJECT TITLE 1",
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.01,
                ),
                Row(
                  children: [
                    ProjectContainer(
                      description:
                          "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
                      title: "PROJECT TITLE 2",
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    ProjectContainer(
                      description:
                          "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
                      title: "PROJECT TITLE 3",
                    ),
                  ],
                )
              ],
            )
          ],
        )
        // ProjectContainer(
        //   title: "Project Title 0",
        //   description:
        //       "Describe the project being very specific, you can use \nthe Twitter standard: no more than 280 characters: \ncomplement the information: the skills learned or \nreinforced in its realization and how you faced it, \nprove to be proactive in the search for solutions.",
        // ),
      ]),
    );
  }
}
