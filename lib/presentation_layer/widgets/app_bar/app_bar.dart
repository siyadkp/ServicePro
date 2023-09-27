import 'package:flutter/material.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget{

  static PreferredSizeWidget? appBarWidget({ required String title,required bool titleHiding })=>AppBar (leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new),), centerTitle: true, title: Text(titleHiding ?'' : title,style: KFonts.poppins(fontSize: 5.w,fontWeight: FontWeight.bold),),);

}