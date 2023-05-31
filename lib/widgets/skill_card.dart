import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/utils/web_colors.dart';

class SkillCard extends StatefulWidget {
  SkillCard({Key? key, required this.onClick, required this.path})
      : super(key: key);

  String path;
  Function()? onClick;

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final transform = Matrix4.identity()..translate(0, -8, 0);
    final hoverTransform = isHover ? transform : Matrix4.identity();
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        onEnter: (event) => changeState(true),
        onExit: (event) => changeState(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.all(size.width * 0.008),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * 0.01),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                offset: isHover ? const Offset(-2, -2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.gradientColor1 : AppColors.primary,
              ),
              BoxShadow(
                offset: isHover ? const Offset(2, 2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.gradientColor1 : AppColors.primary,
              ),
            ],
          ),
          transform: hoverTransform,
          curve: Curves.elasticInOut,
          child: SvgPicture.asset(
            widget.path,
            color: Colors.white,
            height: size.width * 0.03,
            width: size.width * 0.03,
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
