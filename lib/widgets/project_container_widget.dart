import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_button.dart';

import '../utils/text_styles.dart';
import '../utils/web_colors.dart';

class ProjectContainer extends StatelessWidget {
  ProjectContainer({required this.description, required this.title, super.key});

  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.text12(
                val: size.width * 0.02,
                bold: true,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              description,
              style: AppTextStyles.text12(val: size.width * 0.01),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                  text: "Live Demo",
                  replaceTextColor: AppColors.primary,
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Text(
                  "Source Code",
                  style: AppTextStyles.text12(
                    val: size.width * 0.016,
                    bold: true,
                  ),
                )
              ],
            )
          ],
        ),
        Container(
          height: size.width * 0.3,
          width: size.width * 0.4,
          color: AppColors.secondary,
        ),
      ],
    );
  }
}
