import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaIcon extends StatefulWidget {
  SocialMediaIcon({Key? key, required this.onClick, required this.path})
      : super(key: key);

  String path;
  Function()? onClick;

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final transform = Matrix4.identity()..translate(0, -5, 0);
    final hoverTransform = isHover ? transform : Matrix4.identity();
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        onEnter: (event) => changeState(true),
        onExit: (event) => changeState(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: hoverTransform,
          curve: Curves.elasticInOut,
          child: SvgPicture.asset(
            widget.path,
            color: Colors.white,
            height: size.width * 0.05,
            width: size.width * 0.05,
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
