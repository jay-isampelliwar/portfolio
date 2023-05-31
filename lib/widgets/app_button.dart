import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';
import '../utils/text_styles.dart';

class AppButton extends StatefulWidget {
  AppButton(
      {this.bgColor = Colors.transparent,
      this.borderColor = Colors.white,
      required this.onTap,
      required this.textColor,
      super.key,
      required this.text,
      required this.replaceTextColor});

  Color bgColor;
  Color borderColor;
  Color textColor;
  Color replaceTextColor;
  String text;
  Function()? onTap;
  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
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
                color: isHover ? AppColors.gradientColor1 : AppColors.primary,
              ),
              BoxShadow(
                offset: isHover ? const Offset(2, 2) : Offset.zero,
                blurRadius: 2,
                color: isHover ? AppColors.gradientColor1 : AppColors.primary,
              ),
            ],
          ),
          child: Align(
            child: Text(
              widget.text,
              style: AppTextStyles.h5(bold: true, size: size).copyWith(
                color: widget.textColor,
              ),
            ),
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
