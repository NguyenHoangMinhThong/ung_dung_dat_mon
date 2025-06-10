import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.type = RoundButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              type == RoundButtonType.bgPrimary
                  ? ColorApp.primary
                  : ColorApp.white,
          borderRadius: BorderRadius.circular(30),
          border:
              type == RoundButtonType.bgPrimary
                  ? null
                  : Border.all(color: ColorApp.primary, width: 2),
        ),
        child: Text(
          title,
          style: TextStyle(
            color:
                type == RoundButtonType.bgPrimary
                    ? ColorApp.white
                    : ColorApp.primary,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
