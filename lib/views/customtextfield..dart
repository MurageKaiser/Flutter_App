import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  final TextEditingController userFieldController;
  final IconData? icon;
  final bool hideText;
  final bool isPassword;
  final String? hint;
  const customtextfield(
      {super.key,
      required this.userFieldController,
      this.icon,
      this.hideText = false,
      this.hint,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: userFieldController,
      decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? Icon(Icons.visibility)
              : Container(
                  height: 10,
                  width: 10,
                )),
      obscureText: hideText,
    );
  }
}
