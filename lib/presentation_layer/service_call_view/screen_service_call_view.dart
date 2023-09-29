import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/app_bar/app_bar.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';
import '../widgets/single_service_call_widget/single_service_call_widget.dart';

class ScreenServiceCallview extends StatelessWidget {
  const ScreenServiceCallview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarWidget(title: 'Service Calls',titleHiding: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Service calls',
                style: KFonts.poppins(fontSize: 5.w, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
                width: 132,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: KColors.darkBlue),
                  ),
                  child: const Text('Apr 20 2023'),
                ),
              )
            ],
          ),
          const SizedBox(height:20 ,),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 15,),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => const SingleServiceCallWidget(),
          ),
          SizedBox(height: 3.h,)
        ],
      ),
    );
  }
}
