import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';

class customtext extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  const customtext({
    super.key,
    required this.label,
    this.labelColor = appGreen,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: labelColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
