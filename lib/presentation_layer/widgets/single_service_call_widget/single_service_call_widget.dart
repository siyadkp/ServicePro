import 'package:flutter/material.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';

import '../status_widget/status_widget.dart';

class SingleServiceCallWidget extends StatelessWidget {
  const SingleServiceCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90.w,
         height: 15.2.h,
         decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          
         ),
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Job no:',style: KFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: KColors.grey,),),
                      Text('C23/287',style: KFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: KColors.darkBlue,))
                    ],
                  ),
                  Text('Apr 10 2023 to Dec 10 2023',style: KFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: KColors.grey,))
                ],
              ),
              SizedBox(height: 5,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Muhammad Siyad',style: KFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500),),
                  Text('&78656',style: KFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold)),
              ],),
              SizedBox(height: 5,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Dell latitude 7490',style: KFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,),),
              StatusWidget()
              ],)
            ],
           ),
         ),
      ),
    );
  }
}