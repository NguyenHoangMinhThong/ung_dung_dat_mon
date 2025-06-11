import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class MostPopularCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;

  const MostPopularCell({super.key, required this.mObj, required this.onTap});

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
                mObj["image"].toString(),
                width: 220,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              mObj["name"].toString(),
              style: TextStyle(
                color: ColorApp.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj["type"].toString(),
                  style: TextStyle(
                    color: ColorApp.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  " . ",
                  style: TextStyle(
                    color: ColorApp.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  mObj["food_type"].toString(),
                  style: TextStyle(
                    color: ColorApp.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(width: 6),

                Image.asset(
                  "assets/img/star_icon.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),

                SizedBox(width: 3),

                Text(
                  mObj["rate"].toString(),
                  style: TextStyle(
                    color: ColorApp.primary,
                    fontSize: 12,
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
