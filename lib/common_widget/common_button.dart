import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';

class CommonButton extends StatelessWidget {
  String text;
  double width, height, fontSize;
  FontWeight fontWeight;
  FontStyle fontStyle;
  TextAlign textAlign;
  Color color, buttonPrimaryColor, buttonOnPrimaryColor;
  Function()? onTap;

  CommonButton(
      {required this.text,
      this.width = 150,
      this.height = 50,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w200,
      this.fontStyle = FontStyle.normal,
      this.fontSize = 12,
      this.onTap,
      this.textAlign = TextAlign.left,
      this.buttonPrimaryColor = Colors.white,
      this.buttonOnPrimaryColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        child: CommonTextWidget(
          text: text,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          color: color,
          textAlign: textAlign,
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonPrimaryColor, // background
          onPrimary: buttonOnPrimaryColor, // foreground
        ),
        onPressed: onTap!,
      ),
    );
  }
}
