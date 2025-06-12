import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/menu_item_row.dart';
import 'package:ung_dung_dat_mon/common_widget/popular_restaurant_row.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/menu/item_detail_view.dart';

class MenuItems extends StatefulWidget {
  final Map mObj;
  const MenuItems({super.key, required this.mObj});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  TextEditingController searchController = TextEditingController();

  List popList = [
    {
      "name": "Hamburger",
      "image": "assets/img/foods/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "food_type": "Ẩm thực Mỹ",
    },
    {
      "name": "Mì Ý",
      "image": "assets/img/foods/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "food_type": "Ẩm thực Ý",
    },
    {
      "name": "Cơm trộn Hàn Quốc",
      "image": "assets/img/foods/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "food_type": "Ẩm thực Hàn Quốc",
    },
    {
      "name": "Beef Steak",
      "image": "assets/img/foods/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "food_type": "Ẩm thực Pháp",
    },
    {
      "name": "Bánh mì",
      "image": "assets/img/foods/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "food_type": "Ẩm thực Việt Nam",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/bg.jpg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
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
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset(
                            "assets/img/arrow_back.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.mObj["name"].toString(),
                          style: TextStyle(
                            color: ColorApp.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
                    child: RoundTextfield(
                      hintText: "Tìm kiếm món ăn",
                      iconName: Icons.search,
                    ),
                  ),

                  const SizedBox(height: 15),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: popList.length,
                    itemBuilder: ((context, index) {
                      var mObj = popList[index] as Map? ?? {};
                      return MenuItemRow(
                        mObj: mObj,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailView(),
                            ),
                          );
                        },
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
