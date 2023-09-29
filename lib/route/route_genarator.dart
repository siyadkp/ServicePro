import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/add_and_edit_customer/add_and_edit_customer.dart';
import 'package:service_pro/presentation_layer/customer_view/screen_customer_view.dart';
import 'package:service_pro/presentation_layer/edit_your_call/screen_edit_your_call.dart';
import 'package:service_pro/presentation_layer/home/screen_home.dart';
import 'package:service_pro/presentation_layer/otp/screen_otp.dart';
import 'package:service_pro/presentation_layer/register_new_call/register_new_call.dart';
import 'package:service_pro/presentation_layer/service_call_view/screen_service_call_view.dart';
import 'package:service_pro/presentation_layer/sign_in/screen_sign_in.dart';
import 'package:service_pro/presentation_layer/sign_up/screen_sign_up.dart';
import 'package:service_pro/presentation_layer/splash/screen_splash.dart';

class RouteGenarator {

  // Rout screence

  static const String splash = '/';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String home = '/home';
  static const String registernewcall = '/register_new_call';
  static const String servicecallview = '/service_call_view';
  static const String editYourCall = '/edit_call';
  static const String customerview = '/customer_view';
  static const String addandeditcustomer = '/add_and_edit_customer';


// This using for home page service card routing

static List<String> route = [
  registernewcall,servicecallview,customerview,otp,addandeditcustomer
];


// This return specific screence

  static Route<Widget> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const ScreenSplash(),
        );
      case signin:
        return MaterialPageRoute(
          builder: (_) =>  ScreenSignIn(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (_) => const ScreenSignUp(),
        );
      case otp:
        return MaterialPageRoute(
          builder: (_) => const ScreenOtp(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const ScreenHome(),
        );
      case registernewcall:
        return MaterialPageRoute(
          builder: (_) => const ScreenRegisterNewCall(),
        );
      case servicecallview:
        return MaterialPageRoute(
          builder: (_) => const ScreenServiceCallview(),
        );
      case editYourCall:
        return MaterialPageRoute(
          builder: (_) => const ScreenEditYourCall(),
        );
      case customerview:
        return MaterialPageRoute(
          builder: (_) => const ScreenCustomerView(),
        );
      case addandeditcustomer:
        return MaterialPageRoute(
          builder: (_) => const ScreenAddAndEditCustomer(),
        );
    }
    return MaterialPageRoute(
      builder: (_) => const ScreenSplash(),
    );
  }
}
