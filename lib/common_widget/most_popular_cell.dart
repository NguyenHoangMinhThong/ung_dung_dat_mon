import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class MostPopularCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback onTap;

  const MostPopularCell({super.key, required this.cObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj["image"].toString(),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              cObj["name"].toString(),
              style: TextStyle(
                color: ColorApp.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  cObj["name"].toString(),
                  style: TextStyle(
                    color: ColorApp.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
