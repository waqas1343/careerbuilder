import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextStyle? style;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontFamily: 'Oddval',
          ),
    );
  }
}
