import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/web_colors.dart';

import '../utils/text_styles.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.06),
      child: Column(children: [
        Text(
          "TECH STACK",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TechCard(
              imagePath: "assets/svgs/flutter.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/Dart.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/java.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/javascript.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/nodejs.svg",
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        Text(
          "SOCIAL MEDIA",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TechCard(
              imagePath: "assets/svgs/linkedin.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/github.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/youtube.svg",
            ),
            TechCard(
              imagePath: "assets/svgs/instagram.svg",
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        Text(
          "CODING PLATFORM",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TechCard(
              imagePath: "assets/svgs/leetcode.svg",
            ),
          ],
        ),
      ]),
    );
  }
}

class TechCard extends StatefulWidget {
  const TechCard({Key? key, required this.imagePath}) : super(key: key);
  final imagePath;

  @override
  State<TechCard> createState() => _TechCardState();
}

class _TechCardState extends State<TechCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final transform = Matrix4.identity()..translate(0, -10, 0);
    final hoverTransform = isHover ? transform : Matrix4.identity();
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) => changeState(true),
      onExit: (event) => changeState(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: hoverTransform,
        height: size.width * 0.08,
        width: size.width * 0.08,
        padding: EdgeInsets.all(size.width * 0.01),
        decoration: BoxDecoration(
            color: AppColors.primary,
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                  offset: isHover ? const Offset(-1, -1) : Offset.zero,
                  color: Colors.white,
                  blurRadius: isHover ? 5 : 0,
                  spreadRadius: 1),
              BoxShadow(
                  offset: isHover ? const Offset(1, 1) : Offset.zero,
                  color: Colors.white,
                  blurRadius: isHover ? 5 : 0,
                  spreadRadius: 1),
            ]),
        child: Align(
          child: SvgPicture.asset(
            widget.imagePath,
            fit: BoxFit.fill,
            width: size.width * 0.04,
            height: size.width * 0.04,
          ),
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
