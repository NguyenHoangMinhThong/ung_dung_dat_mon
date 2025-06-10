import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/category_cell.dart';
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
    {"name": "Hoa Kỳ", "image": "assets/img/hamburger.png"},
    {"name": "Itaian", "image": "assets/img/mi_y.png"},
    {"name": "Hàn Quốc", "image": "assets/img/com_tron_han_quoc.png"},
    {"name": "Pháp", "image": "assets/img/beef_steak.png"},
    {"name": "Việt Nam", "image": "assets/img/banh_mi.png"},
  ];

  List popList = [
    {
      "name": "Hoa Kỳ",
      "image": "assets/img/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "location": "Phan Xích Long, Quận 11",
    },
    {
      "name": "Itaian",
      "image": "assets/img/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "location": "Trần Hưng Đạo, Quận 5",
    },
    {
      "name": "Hàn Quốc",
      "image": "assets/img/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "location": "Nguyễn Thái Bình, Quận 1",
    },
    {
      "name": "Pháp",
      "image": "assets/img/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "location": "Phạm Văn Hai, Quận Tân Bình",
    },
    {
      "name": "Việt Nam",
      "image": "assets/img/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "location": "Lưu Nhân Chú, Quận Tân Bình",
    },
  ];

  List mostpopList = [
    {
      "name": "Hoa Kỳ",
      "image": "assets/img/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "location": "Phan Xích Long, Quận 11",
    },
    {
      "name": "Itaian",
      "image": "assets/img/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "location": "Trần Hưng Đạo, Quận 5",
    },
    {
      "name": "Hàn Quốc",
      "image": "assets/img/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "location": "Nguyễn Thái Bình, Quận 1",
    },
    {
      "name": "Pháp",
      "image": "assets/img/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "location": "Phạm Văn Hai, Quận Tân Bình",
    },
    {
      "name": "Việt Nam",
      "image": "assets/img/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "location": "Lưu Nhân Chú, Quận Tân Bình",
    },
  ];

  List recentList = [
    {
      "name": "Hoa Kỳ",
      "image": "assets/img/hamburger.png",
      "rate": "4.9",
      "rating": "124",
      "type": "Thức ăn nhanh",
      "location": "Phan Xích Long, Quận 11",
    },
    {
      "name": "Itaian",
      "image": "assets/img/mi_y.png",
      "rate": "3.5",
      "rating": "200",
      "type": "Món chính",
      "location": "Trần Hưng Đạo, Quận 5",
    },
    {
      "name": "Hàn Quốc",
      "image": "assets/img/com_tron_han_quoc.png",
      "rate": "5.0",
      "rating": "620",
      "type": "Món chính",
      "location": "Nguyễn Thái Bình, Quận 1",
    },
    {
      "name": "Pháp",
      "image": "assets/img/beef_steak.png",
      "rate": "4.9",
      "rating": "490",
      "type": "Món chính",
      "location": "Phạm Văn Hai, Quận Tân Bình",
    },
    {
      "name": "Việt Nam",
      "image": "assets/img/banh_mi.png",
      "rate": "5.0",
      "rating": "725",
      "type": "Món chính",
      "location": "Lưu Nhân Chú, Quận Tân Bình",
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
                        Text(
                          "Xin chào, Thông",
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

                  const SizedBox(height: 30),

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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ViewAllTitleRow(
                      title: "Các món ăn phổ biến",
                      onView: () {},
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ViewAllTitleRow(
                      title: "Các món ăn gần đây",
                      onView: () {},
                    ),
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
