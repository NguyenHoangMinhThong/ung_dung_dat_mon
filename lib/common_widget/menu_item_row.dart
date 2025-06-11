import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';

class MenuItemRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;

  const MenuItemRow({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              mObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),

            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mObj["name"].toString(),
                        style: TextStyle(
                          color: ColorApp.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
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
                            mObj["rate"].toString(),
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          SizedBox(width: 8),

                          Text(
                            mObj["type"].toString(),
                            style: TextStyle(
                              color: ColorApp.white,
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
                            mObj["food_type"].toString(),
                            style: TextStyle(
                              color: ColorApp.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
