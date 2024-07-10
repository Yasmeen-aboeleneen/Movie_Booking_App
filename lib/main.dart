import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'Core/Routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String routeName = await chechWhichScreen();

  runApp(MyApp(
    routesName: routeName,
  ));
}

Future<String> chechWhichScreen() async {
  String? androidVersion = await getAndroidVersion();
  if (androidVersion != null) {
    if (int.parse(androidVersion) >= 12) {
      return RoutesName.kSplashScreen;
    }
  }
  return RoutesName.kOnBoardingScreen;
}

Future<String?> getAndroidVersion() async {
  if (Platform.isAndroid) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  }
  return null;
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.routesName,
  });
  final String routesName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: RoutesManger.routes,
      initialRoute: routesName,
    );
  }
}
