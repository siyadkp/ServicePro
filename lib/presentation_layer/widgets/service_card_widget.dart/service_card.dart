import 'package:flutter/material.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';

class ServicesCard extends StatelessWidget {
   const ServicesCard({super.key,required this.data,required this.routeName});
 final List data;
 final String routeName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, routeName),
        child: Card(
          elevation: 4,
          child: Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              data[1],
               const SizedBox(height: 10),
               Text(data[0],style: KFonts.poppins(fontSize: 4.w,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}