import 'package:flutter/material.dart';
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
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) => changeState(true),
        onExit: (event) => changeState(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 50),
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          height: size.width * 0.035,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            color: isHover ? widget.borderColor : widget.bgColor,
            border: Border.all(color: widget.borderColor, width: 2),
          ),
          child: Align(
            child: Text(
              widget.text,
              style: AppTextStyles.text12(
                bold: true,
                val: size.width * 0.016,
              ).copyWith(
                color: isHover ? widget.replaceTextColor : widget.textColor,
              ),
            ),
          ),
        ),
        // child: isHover
        //     ? PlainButton(
        //         text: widget.text,
        //         bgColor: widget.bgColor,
        //         borderColor: widget.borderColor,
        //         textColor: widget.textColor,
        //         isHover: true,
        //       )
        //     : PlainButton(
        //         isHover: false,
        //         bgColor: widget.bgColor,
        //         borderColor: widget.borderColor,
        //         textColor: widget.textColor,
        //         text: widget.text,
        //       ),
      ),
    );
  }

  void changeState(bool val) {
    setState(() {
      isHover = val;
    });
  }
}
