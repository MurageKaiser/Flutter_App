import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';
import 'package:project_application/views/customtext.dart';

class customButton extends StatelessWidget {
  final buttonLabel;
  const customButton({
    super.key,
    required this.buttonLabel,
    required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: orange,
        elevation: 10,
        padding: const EdgeInsets.all(12),
      ),
      child: customtext(
        label: buttonLabel,
        labelColor: appRed,
      ),
    );
  }
}
