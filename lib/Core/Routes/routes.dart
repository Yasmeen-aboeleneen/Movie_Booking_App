import 'package:flutter/material.dart';

import '../../Views/OnBoarding/onBoardingScreen.dart';
import '../../Views/Splash/SplashScreen.dart';

class RoutesManger {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (BuildContext context) => const SplashScreen(),
    RoutesName.kOnBoardingScreen: (BuildContext context) =>
        const OnBoardingScreen()
  };
}

class RoutesName {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kOnBoardingScreen = '/kOnBoardingScreen';
}
