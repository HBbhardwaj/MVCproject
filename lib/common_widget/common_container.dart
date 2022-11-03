import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  Widget? widget;
  double width,
      height,
      mTop,
      mBottom,
      mLeft,
      mRight,
      pTop,
      pLeft,
      pRight,
      pBottom,
      tlRadius,
      trRadius,
      blRadius,
      brRadius,
      borderThickness;

  Color backgroundColor, borderColor;

  CommonContainer({
    this.widget,
    this.width = 100,
    this.height = 50,
    this.backgroundColor = Colors.black,
    this.borderColor = Colors.black,
    this.mTop = 0.0,
    this.mLeft = 0.0,
    this.mBottom = 0.0,
    this.mRight = 0.0,
    this.pBottom = 0.0,
    this.pTop = 0.0,
    this.pLeft = 0.0,
    this.pRight = 0.0,
    this.blRadius = 0.0,
    this.borderThickness = 0.0,
    this.brRadius = 0.0,
    this.tlRadius = 0.0,
    this.trRadius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(top: mTop, left: mLeft, right: mRight),
      padding: EdgeInsets.only(
          top: pTop, bottom: pBottom, left: pLeft, right: pRight),
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderThickness),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(tlRadius),
            topRight: Radius.circular(trRadius),
            bottomLeft: Radius.circular(blRadius),
            bottomRight: Radius.circular(brRadius),
          )),
    );
  }
}
