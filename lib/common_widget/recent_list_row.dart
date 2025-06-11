import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class RecentListRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;

  const RecentListRow({super.key, required this.rObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                rObj["image"].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rObj["name"].toString(),
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        rObj["type"].toString(),
                        style: TextStyle(
                          color: ColorApp.primaryText,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Text(
                        " . ",
                        style: TextStyle(
                          color: ColorApp.primary,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Text(
                        rObj["food_type"].toString(),
                        style: TextStyle(
                          color: ColorApp.primaryText,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img/star_icon.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(width: 3),

                      Text(
                        rObj["rate"].toString(),
                        style: TextStyle(
                          color: ColorApp.primary,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(width: 8),

                      Text(
                        "(${rObj["rating"]} lượt đánh giá)",
                        style: TextStyle(
                          color: ColorApp.primaryText,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
