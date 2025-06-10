import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/view/login/login_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/img/bg.jpg',
                width: media.width,
                height: media.height,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/logo.png', fit: BoxFit.contain),
                  Text(
                    'Bạn đã có tài khoản?',
                    style: TextStyle(
                      color: ColorApp.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: RoundButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      title: 'Đăng nhập',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Hoặc',
                    style: TextStyle(
                      color: ColorApp.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: RoundButton(
                      onPressed: () {},
                      title: 'Đăng ký',
                      type: RoundButtonType.textPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
