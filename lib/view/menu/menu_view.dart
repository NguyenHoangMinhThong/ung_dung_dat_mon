import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/menu/menu_items.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {
      "name": "Đồ ăn",
      "image": "assets/img/foods/tokbokki.png",
      "items_count": "120",
    },
    {
      "name": "Đồ uống",
      "image": "assets/img/drinks/sua_tuoi_tran_chau_duong_den.png",
      "items_count": "220",
    },
    {
      "name": "Món tráng miệng",
      "image": "assets/img/dessert/kem_tuoi.png",
      "items_count": "155",
    },
    {
      "name": "Khuyến mãi",
      "image": "assets/img/foods/takoyaki.png",
      "items_count": "25",
    },
  ];

  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
            "assets/img/bg.jpg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 8, right: 20),
            width: media.width - 100,
            height: 90,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 39, 21, 76),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  SizedBox(height: 46),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                            color: ColorApp.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
                    child: RoundTextfield(
                      hintText: "Tìm kiếm món ăn",
                      iconName: Icons.search,
                    ),
                  ),

                  const SizedBox(height: 50),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 20,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: menuArr.length,
                    itemBuilder: ((context, index) {
                      var mObj = menuArr[index] as Map? ?? {};
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuItems(mObj: mObj),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 20,
                              ),
                              width: media.width - 100,
                              height: 90,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 39, 21, 76),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 7,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    mObj["image"].toString(),
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                const SizedBox(width: 15),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mObj["name"].toString(),
                                        style: TextStyle(
                                          color: ColorApp.primaryText,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),

                                      const SizedBox(height: 4),

                                      Text(
                                        "${mObj["items_count"].toString()} món",
                                        style: TextStyle(
                                          color: ColorApp.secondText,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      55,
                                      37,
                                      90,
                                    ),
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/img/arrow_next.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
