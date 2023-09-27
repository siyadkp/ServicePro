import 'package:flutter/material.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../res/color/color.dart';

class HeadingStyleTwo extends StatelessWidget {
   HeadingStyleTwo({
    super.key,required this.title,required this.subTitle,required this.titleFontSize,required this.subTitleFontSize
  });
   
  final String title;
  final String subTitle;
  final double titleFontSize;
  final double subTitleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(title,
              style:
                  KFonts.poppins(fontSize: titleFontSize, fontWeight: FontWeight.bold)),
        ),
Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
             subTitle,
              style: KFonts.poppins(fontSize: subTitleFontSize, color: KColors.grey),
            ),
          ),
      ],
    );
  }
}