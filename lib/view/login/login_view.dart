import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/login/forgot_password_first_view.dart';
import 'package:ung_dung_dat_mon/view/login/signup_view.dart';
import 'package:ung_dung_dat_mon/view/onboarding/onboarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtNumberPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
                    "Đăng nhập",
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "Nhập thông tin tài khoản của bạn để đăng nhập",
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

                  const SizedBox(height: 20),

                  RoundTextfield(
                    controller: txtPassword,
                    hintText: "Mật khẩu",
                    obscureText: true,
                    iconName: Icons.lock,
                  ),

                  const SizedBox(height: 25),

                  RoundButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingView(),
                        ),
                      );
                    },
                    title: "Đăng nhập",
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordFirstView(),
                        ),
                      );
                    },
                    child: Text(
                      "Bạn không nhớ mật khẩu?",
                      style: TextStyle(
                        color: ColorApp.secondText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn chưa có tài khoản?",
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
                              builder: (context) => const SignUpView(),
                            ),
                          );
                        },
                        child: Text(
                          "Đăng ký",
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
