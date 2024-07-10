import 'package:flutter/material.dart';

import '../../Core/Routes/routes.dart';
import '../../Core/Utils/Constants/Assets.dart';
import '../../Core/Utils/Constants/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> animation;
  late Animation<Offset> animation1;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushReplacementNamed(context, RoutesName.kLoginScreen);
            }
          });
    animation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    animation1 = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.kBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SlideTransition(
              position: animation1,
              child: Container(
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                    image: DecorationImage(
                        image: AssetImage(AssetsValuesmanger.kLogoImage))),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SlideTransition(
            position: animation,
            child: const Text(
              'Book your ticket online',
              style: TextStyle(
                  color: ColorsManger.kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SlideTransition(
            position: animation,
            child: const Text(
              'now !',
              style: TextStyle(
                  color: ColorsManger.kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
