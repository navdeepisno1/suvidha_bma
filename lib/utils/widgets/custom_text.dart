import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    key,
    this.fontFamily = 'PT_Sans',
    this.fontWeight,
    this.fontSize,
    this.color,
    this.letterSpacing,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    this.margin,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  final String text;
  final String fontFamily;
  final FontWeight fontWeight;
  final double fontSize;
  final MaterialColor color;
  final double letterSpacing;
  final EdgeInsetsGeometry padding;
  final TextAlign textAlign;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          color: color,
          letterSpacing: letterSpacing,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
