import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:service_pro/presentation_layer/sign_up/screen_sign_up.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter Your OTP',
            style: KFonts.poppins(
                fontSize: 21,
                color: KColors.darkBlue,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'We have sent a OTP on your number',
            style: KFonts.poppins(fontSize: 13, color: KColors.grey),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 9.h,
            child: OtpTextField(
              margin: EdgeInsets.all(2.w),
              fieldWidth: 15.w,
              numberOfFields: 4,
              enabledBorderColor: KColors.grey,
              focusedBorderColor: KColors.darkBlue,
              borderWidth: 1,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenSignUp(),
                  ));
            },
            child: Text(
              'Resend OTP',
              style: KFonts.poppins(
                  fontSize: 14,
                  color: KColors.darkBlue,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
