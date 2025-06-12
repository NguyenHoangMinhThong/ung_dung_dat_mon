import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemDetailView extends StatefulWidget {
  const ItemDetailView({super.key});

  @override
  State<ItemDetailView> createState() => _ItemDetailViewState();
}

class _ItemDetailViewState extends State<ItemDetailView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/img/foods/hamburger.png",
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),

          Container(
            width: media.width,
            height: media.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  SizedBox(height: media.width - 60),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "Hamburger",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 90, 89, 89),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IgnorePointer(
                                    ignoring: true,
                                    child: RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 1.0,
                                      ),
                                      itemBuilder:
                                          (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.deepOrange,
                                          ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ),
                                  Text(
                                    "4 star ratings",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        90,
                                        89,
                                        89,
                                      ),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\35.000",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        90,
                                        89,
                                        89,
                                      ),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "/phần",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        90,
                                        89,
                                        89,
                                      ),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "Mô tả",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 90, 89, 89),
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "Chiếc burger cổ điển này có một miếng bò Úc nướng mềm mọng, dày dặn, được tẩm ướp vừa vặn. Kẹp giữa hai nửa chiếc bánh burger brioche vàng ươm, mềm mại, là sự kết hợp hoàn hảo của các loại rau tươi: lá xà lách giòn tan, lát cà chua đỏ mọng và những khoanh hành tây tím thái mỏng hăng nhẹ. Điểm nhấn không thể thiếu là lớp phô mai cheddar tan chảy phủ đều trên miếng thịt nóng hổi, cùng với sốt burger đặc biệt mang hương vị chua ngọt hài hòa, làm dậy lên tất cả các tầng vị giác",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 95, 95, 95),
                              fontSize: 14,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Divider(
                            color: ColorApp.placeholder.withOpacity(0.5),
                            height: 1,
                          ),
                        ),

                        const SizedBox(height: 15),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "Lựa chọn",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 90, 89, 89),
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: ColorApp.textfield,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                items:
                                    ["Nhỏ", "Lớn"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: ColorApp.primaryText,
                                            fontSize: 14,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                onChanged: (val) {},
                                hint: Text(
                                  "- Chọn kích thước cho món ăn -",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorApp.contenttextfield,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: ColorApp.textfield,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                items:
                                    ["Nhỏ", "Lớn"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: ColorApp.primaryText,
                                            fontSize: 14,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                onChanged: (val) {},
                                hint: Text(
                                  "- Chọn topping cho món ăn -",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorApp.contenttextfield,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Text(
                                "Số lượng món ăn",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 90, 89, 89),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ColorApp.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                height: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorApp.primary),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: ColorApp.primary,

                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),

                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ColorApp.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                SizedBox(height: 35),

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
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
