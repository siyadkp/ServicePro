import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/app_bar/app_bar.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/presentation_layer/widgets/text_form_fields/text_form_field.dart';
import 'package:sizer/sizer.dart';

class ScreenRegisterNewCall extends StatelessWidget {
  const ScreenRegisterNewCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarWidget(title: 'Register a new call',titleHiding: false),
      body: ListView(
        shrinkWrap: true,
        children: [
        
         
          
          Padding(
            padding:  EdgeInsets.only(top: 2.h,left: 3.w,bottom: 1.h),
            child: Text('Customer details',
                style:
                    TextStyle(fontSize: 4.w,fontWeight: FontWeight.bold)),
          ),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
                 Padding(
            padding:  EdgeInsets.only(left: 3.w,bottom: 1.h,),
            child: Text('Customer details',
                style:
                    TextStyle(fontSize: 4.w,fontWeight: FontWeight.bold)),
          ),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
          const TextFormFiledWidget(
              title: 'Customer', hintText: 'Enter your customer name'),
          Buttons.outlinedButton((){}, 'Register'),
          SizedBox(height: 3.h,)
        ],
      ),
    );
  }
}
