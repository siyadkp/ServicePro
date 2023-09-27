import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 4.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(122, 105, 240, 175),
        border: Border.all(color: const Color.fromARGB(255, 0, 200, 83),),
      
      ),
      child:Center(child: Text('Complete')),
    );
  }
}