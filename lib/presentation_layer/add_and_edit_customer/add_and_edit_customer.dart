import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/presentation_layer/widgets/text_form_fields/text_form_field_style2./text_form_field_style_2.dart';
import 'package:sizer/sizer.dart';

import '../../res/fonts/fonts.dart';

class ScreenAddAndEditCustomer extends StatelessWidget {
  const ScreenAddAndEditCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40), child: AppBar()),
      body: ListView(
        children: [
         Center(
            child: Text(
              'Add customer',
              style: KFonts.poppins(fontSize: 5.w, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 4.h,),
      TextFormFieldStyle2(title: 'Name', hintText: 'Enter your customer name'),
      TextFormFieldStyle2(title: 'Phone', hintText: 'Enter your customer phone number'),
      TextFormFieldStyle2(title: 'Whatsapp', hintText: 'Enter your customer whatsapp number'),
      TextFormFieldStyle2(title: 'Address', hintText: 'Enter your customer phone number',ismaxLines: true),
      TextFormFieldStyle2(title: 'Billing Address', hintText: 'Enter your customer whatsapp number',ismaxLines: true),
      Buttons.outlinedButton((){},'Add customer'),
      SizedBox(
            height: 3.h,
          )
        ],
      ),
    );
  }
}