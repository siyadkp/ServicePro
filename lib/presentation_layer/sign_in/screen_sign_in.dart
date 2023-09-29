import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/presentation_layer/widgets/sign_in_with_widet/sign_in_with_widget.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:service_pro/res/images/images.dart';
import 'package:sizer/sizer.dart';
import '../../route/route_genarator.dart';
import '../widgets/text_form_fields/text_form_field.dart';

class ScreenSignIn extends StatefulWidget {
   ScreenSignIn({super.key});

  @override
  State<ScreenSignIn> createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar:
            PreferredSize(preferredSize: Size.fromHeight(5.h), child: AppBar(automaticallyImplyLeading: false,),),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome back',
                  style:
                      KFonts.poppins(fontSize: 8.w, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Login in to your account',
                style: KFonts.poppins(fontSize: 4.w, color: KColors.grey),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const TextFormFiledWidget(
                title: 'Email', hintText: 'Enter your email'),
            
            const TextFormFiledWidget(
                title: 'Password',
                hintText: 'Enter your password',  
                forgotPasswordEnable: true),
            
            Buttons.inlineButton(() {
              if(formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),);
              }
                 Navigator.pushNamed(context, RouteGenarator.otp);
            }, 'Sign in'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you a new User?',
                  style:
                      KFonts.poppins(fontSize: 3.w, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                     Navigator.pushNamed(context, RouteGenarator.signup);
                    },
                    child: Text(
                      'Sign up',
                      style: KFonts.poppins(
                          fontSize: 3.2.w,
                          fontWeight: FontWeight.w600,
                          color: KColors.darkBlue),
                    )),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25.w, 
                  height: 1, 
                  color: Colors.grey[400],
                ),
                Text(
                  ' Or continue with ',
                  style: KFonts.poppins(fontSize: 13, color: Colors.grey),
                ),
                Container(
                  width: 25.w, 
                  height: 1, 
                  color: Colors.grey,
                ),
              ],
            ),
            
            SizedBox(
              height: 4.h,
            ),
            SignInWithWidget.signInWithWidget(
                logo: KImages.googleLogo, title: 'Continue with Google',outline: true),
            SignInWithWidget.signInWithWidget(
                logo: KImages.appleLogo, title: 'Continue with Apple',outline: false),
          ],
        ),
      ),
    );
  }
}
