import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/common_widget/round_textfield.dart';
import 'package:ung_dung_dat_mon/view/login/forgot_password_second_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtFullName = TextEditingController();
  TextEditingController txtAdress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtNumberPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                    "Đăng ký",
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "Nhập thông tin tài khoản của bạn để đăng ký",
                    style: TextStyle(
                      color: ColorApp.secondText,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtFullName,
                    hintText: "Họ và tên",
                    iconName: Icons.person,
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtAdress,
                    hintText: "Địa chỉ",
                    iconName: Icons.location_on,
                  ),

                  const SizedBox(height: 20),
                  RoundTextfield(
                    controller: txtEmail,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    iconName: Icons.email,
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
                          builder: (context) {
                            return ResetPasswordSecondView(
                              txtNumberPhone: txtNumberPhone,
                            );
                          },
                        ),
                      );
                    },
                    title: "Đăng ký",
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn đã có tài khoản?",
                        style: TextStyle(
                          color: ColorApp.secondText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
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
