import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_pro/res/color/color.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.darkBlue,
      body: SvgPicture.asset('assets/service_pro_logo.svg',width: 100,),
    );
  }
}