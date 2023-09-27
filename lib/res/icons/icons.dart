import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IconsAndNaming {

// Icons Fro the service cards

  static Icon callRegistationIcon = Icon(Icons.add_ic_call_outlined,size: 8.w,);
  static Icon serviceCalls = Icon(Icons.handyman_outlined, size: 8.w);
  static Icon customers = Icon(Icons.person_outline, size: 8.w);
  static Icon invoice = Icon(Icons.insert_drive_file_outlined, size: 8.w);
  static Icon report = Icon(Icons.insert_chart_outlined, size: 8.w);

// List of icons for bild the service car with use index

  static List<List> homeCardsIconsAndNaming = [
    ['Register Call', callRegistationIcon],
    ['Service calls', serviceCalls],
    ['Customers', customers],
    ['Invoice', invoice],
    ['Report', report]
  ];

  // customer view widget icons

  static Icon call = const Icon(Icons.call_end_rounded,color: Color.fromARGB(255, 0, 197, 82),);
  static Icon whatsapp = const Icon(Icons.message,color: Color.fromARGB(255, 0, 197, 82),);
}
