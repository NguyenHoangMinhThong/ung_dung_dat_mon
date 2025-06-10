import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final IconData iconName;
  final Color? bgColor;

  const RoundTextfield({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    required this.iconName,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? ColorApp.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorApp.contenttextfield,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Icon(iconName, color: ColorApp.primary),
        ),
      ),
    );
  }
}
