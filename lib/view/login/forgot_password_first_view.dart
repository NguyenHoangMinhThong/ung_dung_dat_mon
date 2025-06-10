import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/login/forgot_password_second_view.dart';
import 'package:ung_dung_dat_mon/view/login/login_view.dart';

class ResetPasswordFirstView extends StatefulWidget {
  const ResetPasswordFirstView({super.key});

  @override
  State<ResetPasswordFirstView> createState() => _ResetPasswordFirstViewState();
}

class _ResetPasswordFirstViewState extends State<ResetPasswordFirstView> {
  TextEditingController txtNumberPhone = TextEditingController();

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
                    "Nhập số điện thoại của bạn để nhận mã xác nhận",
                    style: TextStyle(
                      color: ColorApp.secondText,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtNumberPhone,
                    hintText: "Số điện thoại",
                    keyboardType: TextInputType.phone,
                    iconName: Icons.phone,
                  ),

                  const SizedBox(height: 25),
                  RoundButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ResetPasswordSecondView(
                                txtNumberPhone: txtNumberPhone,
                              ),
                        ),
                      );
                    },
                    title: "Gửi mã xác nhận",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn đã nhớ mật khẩu?",
                        style: TextStyle(
                          color: ColorApp.secondText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
                          "Đăng nhập",
                          style: TextStyle(
                            color: ColorApp.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
