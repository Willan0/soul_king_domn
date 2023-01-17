
import 'package:flutter/material.dart';

class EasyTextWidgets extends StatelessWidget {
  const EasyTextWidgets({
    Key? key,
    required this.data,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16.0,
    this.decoration = TextDecoration.none,
  }) : super(key: key);
  final String data;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration
      ),
    );
  }
}
