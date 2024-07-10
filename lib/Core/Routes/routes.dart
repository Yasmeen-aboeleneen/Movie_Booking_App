import 'package:flutter/material.dart';
import 'package:movie_booking_app/Views/Auth/login_screen.dart';
import '../../Views/Splash/SplashScreen.dart';

class RoutesManger {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (BuildContext context) => const SplashScreen(),
    RoutesName.kLoginScreen: (BuildContext context) => const LoginScreen()
  };
}

class RoutesName {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kLoginScreen = '/kLoginScreen';
}
