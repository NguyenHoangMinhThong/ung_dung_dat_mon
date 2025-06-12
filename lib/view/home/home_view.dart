import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/category_cell.dart';
import 'package:ung_dung_dat_mon/common_widget/most_popular_cell.dart';
import 'package:ung_dung_dat_mon/common_widget/popular_restaurant_row.dart';
import 'package:ung_dung_dat_mon/common_widget/recent_list_row.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/common_widget/view_all_title_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();

  List categoryList = [
    {"name": "Hoa Kỳ", "image": "assets/img/foods/hamburger.png"},
    {"name": "Itaian", "image": "assets/img/foods/mi_y.png"},
    {"name": "Hàn Quốc", "image": "assets/img/foods/com_tron_han_quoc.png"},
    {"name": "Pháp", "image": "assets/img/foods/beef_steak.png"},
    {"name": "Việt Nam", "image": "assets/img/foods/banh_mi.png"},
  ];

  List popList = [
    {
      "name": "Hamburger",
      "image": "assets/img/foods/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "food_type": "Ẩm thực Mỹ", // hoặc "Mỹ" nếu bạn muốn ngắn gọn
    },
    {
      "name": "Mì Ý",
      "image": "assets/img/foods/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "food_type": "Ẩm thực Ý", // hoặc "Ý"
    },
    {
      "name": "Cơm trộn Hàn Quốc",
      "image": "assets/img/foods/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "food_type": "Ẩm thực Hàn Quốc", // hoặc "Hàn Quốc"
    },
    {
      "name": "Beef Steak",
      "image": "assets/img/foods/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "food_type": "Ẩm thực Pháp", // hoặc "Pháp"
    },
    {
      "name": "Bánh mì",
      "image": "assets/img/foods/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "food_type": "Ẩm thực Việt Nam", // hoặc "Việt Nam"
    },
  ];

  List mostpopList = [
    {
      "name": "Cơm trộn Hàn Quốc",
      "image": "assets/img/foods/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "food_type": "Ẩm thực Hàn Quốc", // hoặc "Hàn Quốc"
    },
    {
      "name": "Beef Steak",
      "image": "assets/img/foods/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "food_type": "Ẩm thực Pháp", // hoặc "Pháp"
    },
  ];

  List recentList = [
    {
      "name": "Hamburger",
      "image": "assets/img/foods/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "food_type": "Ẩm thực Mỹ", // hoặc "Mỹ" nếu bạn muốn ngắn gọn
    },
    {
      "name": "Mì Ý",
      "image": "assets/img/foods/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "food_type": "Ẩm thực Ý", // hoặc "Ý"
    },
    {
      "name": "Bánh mì",
      "image": "assets/img/foods/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "food_type": "Ẩm thực Việt Nam", // hoặc "Việt Nam"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 39, 21, 76),
            height: media.height,
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
                          "Xin chào, Thông",
                          style: TextStyle(
                            color: ColorApp.primary,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Giao hàng tới",
                          style: TextStyle(
                            color: ColorApp.secondText,
                            fontSize: 11,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Row(
                          children: [
                            Text(
                              "Địa chỉ hiện tại",
                              style: TextStyle(
                                color: ColorApp.secondText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 20),

                            Image.asset(
                              "assets/img/dropdown_button.png",
                              width: 18,
                              height: 18,
                            ),
                          ],
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

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: categoryList.length,
                      itemBuilder: ((context, index) {
                        var cObj = categoryList[index] as Map? ?? {};
                        return CategoryCell(cObj: cObj, onTap: () {});
                      }),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ViewAllTitleRow(
                      title: "Các nhà hàng nổi tiếng",
                      onView: () {},
                    ),
                  ),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: popList.length,
                    itemBuilder: ((context, index) {
                      var pObj = popList[index] as Map? ?? {};
                      return PopularRestaurantRow(rObj: pObj, onTap: () {});
                    }),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ViewAllTitleRow(
                      title: "Các món ăn phổ biến",
                      onView: () {},
                    ),
                  ),

                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: mostpopList.length,
                      itemBuilder: ((context, index) {
                        var mObj = mostpopList[index] as Map? ?? {};
                        return MostPopularCell(mObj: mObj, onTap: () {});
                      }),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ViewAllTitleRow(
                      title: "Các món ăn gần đây",
                      onView: () {},
                    ),
                  ),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: recentList.length,
                    itemBuilder: ((context, index) {
                      var rObj = recentList[index] as Map? ?? {};
                      return RecentListRow(rObj: rObj, onTap: () {});
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
