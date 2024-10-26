import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presenation/view/details_view.dart';
import 'package:flutter_application_1/features/home/presenation/view/home_view.dart';
import 'package:flutter_application_1/features/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return GetPageRoute(page: () => HomeView());
      case '/splash':
        return GetPageRoute(page: () => SplashScreen());
        case '/details':
        return GetPageRoute(page: () => DetailsView());
      
      default:
        return null;
    }
  }
}