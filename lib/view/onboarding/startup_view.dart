import 'package:flutter/material.dart';
import 'package:ung_dung_dat_mon/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcome();
  }

  void goWelcome() async {
    await Future.delayed(Duration(seconds: 5));
    WelcomePage();
  }

  void WelcomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/bg.jpg',
            fit: BoxFit.cover,
            width: media.width,
            height: media.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.png',
                width: media.width * 1.0,
                height: media.height * 1.0,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
