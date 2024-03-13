import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.text, required this.textSize, required this.textColor,
  });
  final Color textColor;
  final double textSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style:  TextStyle(fontSize: textSize,color: textColor),);
  }
}
