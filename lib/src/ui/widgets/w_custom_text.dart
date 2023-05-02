import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.color = Colors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.bold,
    this.fontStyle = FontStyle.normal,
    this.overflow,
    super.key,
  });

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
      overflow: overflow,
    );
  }
}
