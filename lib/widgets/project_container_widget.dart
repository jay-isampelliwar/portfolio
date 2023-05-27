import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_button.dart';

import '../utils/text_styles.dart';
import '../utils/web_colors.dart';

class ProjectContainer extends StatelessWidget {
  ProjectContainer(
      {required this.onTap,
      required this.description,
      required this.title,
      super.key});

  String title;
  String description;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.h5(size: size, bold: true),
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Text(
                description,
                style: AppTextStyles.h6(
                  size: size,
                ),
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              AppButton(
                onTap: onTap,
                textColor: Colors.white,
                text: "Source Code",
                replaceTextColor: AppColors.primary,
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          Container(
            height: size.width * 0.2,
            width: size.width * 0.2,
            color: AppColors.secondary,
          ),
        ],
      ),
    );
  }
}
