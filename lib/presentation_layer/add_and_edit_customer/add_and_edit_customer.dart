import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/app_bar/app_bar.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/presentation_layer/widgets/text_form_fields/text_form_field_style2./text_form_field_style_2.dart';
import 'package:sizer/sizer.dart';

import '../../res/fonts/fonts.dart';

class ScreenAddAndEditCustomer extends StatelessWidget {
  const ScreenAddAndEditCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBarWidget.appBarWidget(title: 'Add customer', titleHiding: false),
      body: ListView(
        children: [
          SizedBox(height: 4.h,),
      const TextFormFieldStyle2(title: 'Name', hintText: 'Enter your customer name'),
      const TextFormFieldStyle2(title: 'Phone', hintText: 'Enter your customer phone number'),
      const TextFormFieldStyle2(title: 'Whatsapp', hintText: 'Enter your customer whatsapp number'),
      const TextFormFieldStyle2(title: 'Address', hintText: 'Enter your customer phone number',ismaxLines: true),
      const TextFormFieldStyle2(title: 'Billing Address', hintText: 'Enter your customer whatsapp number',ismaxLines: true),
      Buttons.outlinedButton((){},'Add customer'),
      SizedBox(
            height: 3.h,
          )
        ],
      ),
    );
  }
}