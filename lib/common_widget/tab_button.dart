import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.icon,
  });
  final VoidCallback onTap;
  final bool isSelected;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            color: isSelected ? ColorApp.contenttextfield : ColorApp.primary,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
