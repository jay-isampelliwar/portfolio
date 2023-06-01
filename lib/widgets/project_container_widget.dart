import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/utils/text_styles.dart';

import '../utils/web_colors.dart';
import 'app_button.dart';

class ProjectContainer extends StatefulWidget {
  ProjectContainer(
      {required this.onTap,
      required this.description,
      required this.title,
      required this.techStack,
      super.key});

  List<String> techStack;
  String title;
  String description;
  Function()? onTap;

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) => changeState(true),
      onExit: (event) => changeState(false),
      child: Container(
        width: size.width * 0.6,
        padding: EdgeInsets.symmetric(
            vertical: size.width * 0.02, horizontal: size.width * 0.02),
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(size.width * 0.01),
            boxShadow: [
              BoxShadow(
                  offset: isHover ? const Offset(3, 3) : Offset.zero,
                  color: isHover ? AppColors.secondary : AppColors.primary,
                  blurRadius: 3),
              BoxShadow(
                  offset: isHover ? const Offset(-3, -3) : Offset.zero,
                  color: isHover ? AppColors.secondary : AppColors.primary,
                  blurRadius: 3)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: AppTextStyles.h5(
                      size: size,
                      bold: true,
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  Text(
                    widget.description,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.h6(
                      size: size,
                      lite: true,
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  Wrap(
                    children: widget.techStack
                        .map(
                          (tech) => Container(
                            padding: EdgeInsets.all(size.width * 0.004),
                            margin: EdgeInsets.only(
                                right: size.width * 0.004,
                                bottom: size.width * 0.004),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.01),
                              border: Border.all(
                                width: 1,
                                color: AppColors.secondary,
                              ),
                            ),
                            child: Text(
                              tech,
                              style: AppTextStyles.h6(
                                size: size,
                                lite: true,
                              ).copyWith(fontSize: size.width * 0.008),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  AppCircularButton(
                    onTap: widget.onTap,
                    textColor: Colors.white,
                    replaceTextColor: Colors.black,
                    child: SvgPicture.asset(
                      "assets/svgs/link.svg",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            Container(
              height: size.width * 0.2,
              width: size.width * 0.3,
              color: AppColors.footer,
            )
          ],
        ),
      ),
    );
  }

  void changeState(bool val) {
    setState(() {
      isHover = val;
    });
  }
}
