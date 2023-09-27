import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:sizer/sizer.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget(
      {super.key,
      required this.title,
      required this.hintText,
      this.forgotPasswordEnable = false});

  final String title;
  final String hintText;
  final bool forgotPasswordEnable;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 85.w,
            height: 14.w,
            child: TextFormField(
              
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle:
                    const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: KColors.grey),
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: KColors.darkBlue,
                    ),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          forgotPasswordEnable
              ? SizedBox(
                width: 85.w,
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot password',
                          style: TextStyle(
                            fontSize: 3.2.w,
                            color: KColors.darkBlue
                          ),),),
                ),
              )
              : const SizedBox(),
              SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
