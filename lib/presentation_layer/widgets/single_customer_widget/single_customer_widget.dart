import 'package:flutter/material.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../res/icons/icons.dart';


class SingleCustomerWidget extends StatelessWidget {
  const SingleCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90.w,
         height: 11.h,
         decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          
         ),
         child:  Padding(
           padding: const EdgeInsets.all(5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Padding(
               padding: const EdgeInsets.only(left: 5),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Muhammad Siyad kp',style: KFonts.poppins(fontSize: 3.5.w,fontWeight: FontWeight.w500),),
                  SizedBox(height: 3,),
                   Text('Kottakkal',style: KFonts.poppins(fontSize: 3.5.w,fontWeight: FontWeight.w500)),
                   SizedBox(height: 3,),
                     Text('756864965',style: KFonts.poppins(fontSize: 3.5.w,fontWeight: FontWeight.w500)),
                    
                ],
               ),
             ),
          
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 IconButton(onPressed: (){}, icon: IconsAndNaming.call),
                      IconButton(onPressed: (){}, icon: IconsAndNaming.whatsapp),
                ],
              
            )
            
            ],
           ),
         ),
      ),
    );
  }
}