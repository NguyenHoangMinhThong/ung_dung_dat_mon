import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/login/login_view.dart';

class ResetPasswordThirdView extends StatefulWidget {
  const ResetPasswordThirdView({super.key});

  @override
  State<ResetPasswordThirdView> createState() => _ResetPasswordThirdViewState();
}

class _ResetPasswordThirdViewState extends State<ResetPasswordThirdView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtPasswordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/bg.jpg",
            fit: BoxFit.cover,
            height: media.height,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 64),

                  Text(
                    "Quên mật khẩu",
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "Nhập mật khẩu của bạn",
                    style: TextStyle(
                      color: ColorApp.secondText,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtPassword,
                    hintText: "Mật khẩu mới",
                    obscureText: true,
                    iconName: Icons.lock,
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtPasswordConfirm,
                    hintText: "Xác nhận mật khẩu mới",
                    obscureText: true,
                    iconName: Icons.lock,
                  ),

                  const SizedBox(height: 25),
                  RoundButton(onPressed: () {}, title: "Xác nhận mật khẩu"),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },
                    child: Text(
                      "Quay lại",
                      style: TextStyle(
                        color: ColorApp.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
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
