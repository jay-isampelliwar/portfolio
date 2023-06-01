import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';

class AppRectButton extends StatefulWidget {
  AppRectButton(
      {this.bgColor = Colors.transparent,
      this.borderColor = Colors.white,
      required this.onTap,
      required this.textColor,
      super.key,
      required this.child,
      required this.replaceTextColor});

  Color bgColor;
  Color borderColor;
  Color textColor;
  Color replaceTextColor;
  Widget child;
  Function()? onTap;
  @override
  State<AppRectButton> createState() => _AppRectButtonState();
}

class _AppRectButtonState extends State<AppRectButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final transform = Matrix4.identity()..translate(0, -5, 0);
    final hoverTransform = isHover ? transform : Matrix4.identity();
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) => changeState(true),
        onExit: (event) => changeState(false),
        child: AnimatedContainer(
          transform: hoverTransform,
          duration: const Duration(milliseconds: 50),
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          height: size.width * 0.035,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(size.width * 0.01),
            boxShadow: [
              BoxShadow(
                offset: isHover ? const Offset(-2, -2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.secondary : AppColors.primary,
              ),
              BoxShadow(
                offset: isHover ? const Offset(2, 2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.secondary : AppColors.primary,
              ),
            ],
          ),
          child: Align(child: widget.child),
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

class AppCircularButton extends StatefulWidget {
  AppCircularButton(
      {this.bgColor = Colors.transparent,
      this.borderColor = Colors.white,
      required this.onTap,
      required this.textColor,
      super.key,
      required this.child,
      required this.replaceTextColor});

  Color bgColor;
  Color borderColor;
  Color textColor;
  Color replaceTextColor;
  Widget child;
  Function()? onTap;
  @override
  State<AppCircularButton> createState() => _AppCircularButtonState();
}

class _AppCircularButtonState extends State<AppCircularButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final transform = Matrix4.identity()..translate(0, -8, 0);
    final hoverTransform = isHover ? transform : Matrix4.identity();
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) => changeState(true),
        onExit: (event) => changeState(false),
        child: AnimatedContainer(
          transform: hoverTransform,
          duration: const Duration(milliseconds: 100),
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: isHover ? const Offset(-2, -2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.secondary : AppColors.primary,
              ),
              BoxShadow(
                offset: isHover ? const Offset(2, 2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.secondary : AppColors.primary,
              ),
            ],
          ),
          child: widget.child,
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
