import 'package:flutter/material.dart';

const int relativeWidth = 390;
const int relativeHeight = 844;
const String fontNameDefault = 'Roboto';

double rw(BuildContext context) {
  return rwWidth(MediaQuery.of(context).size.width);
}

double rwWidth(double width) {
  return width / relativeWidth;
}

double rh(BuildContext context) {
  return rhHeight(MediaQuery.of(context).size.height);
}

double rhHeight(double height) {
  return height / relativeHeight;
}

TextStyle getStyle(
    {required BuildContext context,
    required double fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    double? decorationThickness,
    TextBaseline? textBaseline,
    String? fontFamily,
    double? height}) {
  return TextStyle(
      fontFamily: fontFamily ?? fontNameDefault,
      color: color,
      decorationThickness: decorationThickness ?? 0,
      // fontSize: (Platform.isAndroid ? fontSize : fontSize - 2) * rh(context),

      fontSize: fontSize * rh(context),
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      textBaseline: textBaseline,
      height: height);
}

LinearGradient shimmerGradient() => const LinearGradient(
      colors: [
        Color(0xFFEBEBF4),
        Color(0xFFF4F4F4),
        Color(0xFFEBEBF4),
      ],
      stops: [
        0.1,
        0.3,
        0.4,
      ],
      begin: Alignment(-1.0, -0.3),
      end: Alignment(1.0, 0.3),
      tileMode: TileMode.clamp,
    );
