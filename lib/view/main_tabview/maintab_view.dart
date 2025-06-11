import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/tab_button.dart';
import 'package:ung_dung_dat_mon/view/home/home_view.dart';
import 'package:ung_dung_dat_mon/view/menu/menu_view.dart';

class MaintabView extends StatefulWidget {
  const MaintabView({super.key});

  @override
  State<MaintabView> createState() => _MaintabViewState();
}

class _MaintabViewState extends State<MaintabView> {
  int selectab = 2;
  PageStorageBucket bucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 21, 76),
      body: PageStorage(bucket: bucket, child: selectPageView),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectab != 2) {
              selectab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor:
              selectab == 2 ? Colors.tealAccent : ColorApp.textfield,
          child: Image.asset('assets/img/home_logo.png', width: 30, height: 30),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 39, 21, 76),
        surfaceTintColor: ColorApp.white,
        shadowColor: Colors.black12,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Danh mục
            TabButton(
              onTap: () {
                if (selectab != 0) {
                  selectab = 0;
                  selectPageView = const MenuView();
                }
                if (mounted) {
                  setState(() {});
                }
              },
              isSelected: selectab == 0,
              icon: "assets/img/menu_logo.png",
            ),

            // Giỏ hàng
            TabButton(
              onTap: () {
                if (selectab != 1) {
                  selectab = 1;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },
              isSelected: selectab == 1,
              icon: "assets/img/Gio_hang_logo.png",
            ),

            SizedBox(width: 45, height: 40),

            // Cá nhân
            TabButton(
              onTap: () {
                if (selectab != 3) {
                  selectab = 3;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },
              isSelected: selectab == 3,
              icon: "assets/img/profile_logo.png",
            ),

            // Thêm
            TabButton(
              onTap: () {
                if (selectab != 4) {
                  selectab = 4;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },
              isSelected: selectab == 4,
              icon: "assets/img/more_logo.png",
            ),
          ],
        ),
      ),
    );
  }
}
