import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/utils/app_text_sizes.dart';

class CommonTextWidget extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  FontStyle fontStyle;
  double fontSize;
  TextAlign textAlign;
  Color color;

  CommonTextWidget(
      {required this.text,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w200,
      this.fontStyle = FontStyle.normal,
      this.fontSize = 12,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          fontSize: fontSize),
    );
  }
}
