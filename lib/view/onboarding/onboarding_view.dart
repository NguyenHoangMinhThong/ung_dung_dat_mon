import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/view/main_tabview/maintab_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  List pageArr = [
    {
      "title": "Chọn món ăn yêu thích",
      "subtitle": "chỉ cần vài bước đơn giản \nđể có món ăn ngon.",
      "image": "assets/img/the_farvorite_food_onboarding.png",
    },
    {
      "title": "Tìm kiếm quán ăn",
      "subtitle": "Các quán ăn gần bạn \nsẽ được hiển thị ngay lập tức.",
      "image": "assets/img/location_near_house_onboarding.png",
    },
    {
      "title": "Giao hàng nhanh chóng",
      "subtitle": "BQ sẽ giúp bạn tiết kiệm \nthời gian và công sức.",
      "image": "assets/img/Shipper_onboarding.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/bg.jpg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj['image'].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: media.width * 0.2),
                  Text(
                    pObj['title'].toString(),
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),

                  Text(
                    pObj['subtitle'].toString(),
                    style: TextStyle(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: media.width * 0.2),
                ],
              );
            },
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height * 0.65),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    pageArr.map((e) {
                      var index = pageArr.indexOf(e);
                      return Container(
                        height: 6,
                        width: 20,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color:
                              index == selectPage
                                  ? ColorApp.primary
                                  : ColorApp.placeholder,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }).toList(),
              ),
              SizedBox(height: media.width * 0.4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  onPressed: () {
                    if (selectPage >= 2) {
                      print("Go home");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MaintabView(),
                        ),
                      );
                    } else {
                      setState(() {
                        selectPage++;
                        controller.animateToPage(
                          selectPage,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceInOut,
                        );
                      });
                    }
                  },
                  title: "Tiếp tục",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
