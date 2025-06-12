import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;

  const PopularRestaurantRow({
    super.key,
    required this.rObj,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              rObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rObj["name"].toString(),
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img/star_icon.png",
                        width: 13,
                        height: 13,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(width: 3),

                      Text(
                        rObj["rate"].toString(),
                        style: TextStyle(
                          color: ColorApp.primary,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(width: 8),

                      Text(
                        "(${rObj["rating"]} lượt đánh giá)",
                        style: TextStyle(
                          color: ColorApp.primaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(width: 8),

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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
