import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:ung_dung_dat_mon/common/color_app.dart';
import 'package:ung_dung_dat_mon/common_widget/round_button.dart';
import 'package:ung_dung_dat_mon/view/login/forgot_password_third_view.dart';

class ResetPasswordSecondView extends StatefulWidget {
  final TextEditingController txtNumberPhone;
  const ResetPasswordSecondView({super.key, required this.txtNumberPhone});

  @override
  State<ResetPasswordSecondView> createState() =>
      _ResetPasswordSecondViewState();
}

class _ResetPasswordSecondViewState extends State<ResetPasswordSecondView> {
  final _otpPinController = GlobalKey<OtpPinFieldState>();
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
                    "Mã OTP đã được gửi đến thiết bị của bạn",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorApp.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "Vui lòng kiểm tra số điện thoại ${widget.txtNumberPhone.text} để nhập mã xác nhận",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorApp.secondText,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: OtpPinField(
                      key: _otpPinController,

                      autoFillEnable: true,

                      textInputAction: TextInputAction.done,
                      onSubmit: (text) {
                        debugPrint('Entered pin is $text');
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      onChange: (text) {
                        debugPrint('Enter on change pin is $text');
                      },
                      onCodeChanged: (code) {
                        debugPrint('onCodeChanged  is $code');
                      },

                      otpPinFieldStyle: OtpPinFieldStyle(
                        showHintText: true,
                        activeFieldBorderColor: Colors.transparent,
                        defaultFieldBorderColor: Colors.transparent,
                        activeFieldBackgroundColor: ColorApp.textfield,
                        defaultFieldBackgroundColor: ColorApp.textfield,
                        fieldBorderWidth: 3,
                      ),
                      maxLength: 4,

                      showCursor: true,

                      cursorColor: Colors.indigo,

                      upperChild: const Column(
                        children: [
                          SizedBox(height: 30),
                          Icon(Icons.flutter_dash_outlined, size: 150),
                          SizedBox(height: 20),
                        ],
                      ),
                      cursorWidth: 3,

                      mainAxisAlignment: MainAxisAlignment.center,

                      otpPinFieldDecoration:
                          OtpPinFieldDecoration.defaultPinBoxDecoration,
                    ),
                  ),

                  const SizedBox(height: 25),
                  RoundButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordThirdView(),
                        ),
                      );
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    title: "Xác nhận mã OTP",
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn chưa nhận được mã?",
                        style: TextStyle(
                          color: ColorApp.secondText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Gửi lại",
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
