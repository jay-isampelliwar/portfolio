import 'package:flutter/material.dart';
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
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
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
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
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
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
            ),
            TechCard(
              imagePath: "",
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
        height: size.width * 0.1,
        width: size.width * 0.1,
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
      ),
    );
  }

  void changeState(bool val) {
    setState(() {
      isHover = val;
    });
  }
}
