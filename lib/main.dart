import 'package:flutter/material.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:service_pro/route/route_genarator.dart';
import 'package:sizer/sizer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:  (context, orientation, deviceType)  {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Service Pro',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: KColors.darkBlue),
            useMaterial3: true,
          ),
          initialRoute: '/signin',
          onGenerateRoute: RouteGenarator.generateRoute,
        );
      }
    );
  }
}

