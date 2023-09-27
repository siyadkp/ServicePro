import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/home/screen_home.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';
import '../widgets/heading_style_two/heading_style_two.dart';
import '../widgets/text_form_fields/text_form_field.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(5.h), child: AppBar()),
      body: ListView(
        children: [
           HeadingStyleTwo(title:'Register',subTitle: 'Create your new account',titleFontSize: 6.w,subTitleFontSize: 3.5.w), 
            SizedBox(height: 2.h,),
         
          const TextFormFiledWidget(
              title: 'Username', hintText: 'Enter your username'),
             
         
          const TextFormFiledWidget(
            title: 'Email',
            hintText: 'Enter your email',
          ),
         
          const TextFormFiledWidget(
            title: 'Phone',
            hintText: 'Enter your phone number',
          ),
         
          const TextFormFiledWidget(
            title: 'Password',
            hintText: 'Enter your password',
          ),
         
          const TextFormFiledWidget(
            title: 'Confirm password',
            hintText: 'Enter your Confirm password',
          ),
          SizedBox(
            height: 4.h,
          ),
          Buttons.inlineButton(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenHome(),));
          }, 'Create Account'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style:
                    KFonts.poppins(fontSize: 3.w, fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: KFonts.poppins(
                        fontSize: 3.2.w,
                        fontWeight: FontWeight.w600,
                        color: KColors.darkBlue),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}


