import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_booking_app/Core/Utils/Constants/Colors.dart';
import 'package:movie_booking_app/Views/Widgets/CustomTextField.dart';
import 'package:movie_booking_app/Views/Widgets/CustomText_Password.dart';
import 'package:sizer/sizer.dart';

import '../Home/HomeScreen.dart';
import 'signUp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 41, 10, 9),
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 58.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: ColorsManger.kveryWhite,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Column(
                      children: [
                        SizedBox(height: .9.h),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '   Login to your account',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: ColorsManger.kSecondaryColor),
                          ),
                        ),
                        SizedBox(height: 1.4.h),
                        const CustomTextField(hint: 'username'),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        const CustomPassTextField(hint: 'password'),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorsManger.kSecondaryColor,
                                    fontSize: 12.sp),
                              )),
                        ),
                        SizedBox(height: 1.9.h),
                        Container(
                          width: 33.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorsManger.kSecondaryColor),
                          child: TextButton(
                              onPressed: () {
                                Get.to(() => const HomeScreen());
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.white),
                              )),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: Text(
                                  "Don't have an account? Sign up",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorsManger.kSecondaryColor),
                                ))),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: ColorsManger.kSecondaryColor,
                                  thickness: 2,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Log in with',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: ColorsManger.kSecondaryColor,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.9.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorsManger.kSecondaryColor,
                                      width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              width: 33.w,
                              height: 5.5.h,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                        child: Image.network(
                                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                                      fit: BoxFit.cover,
                                      height: 4.h,
                                    )),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    const Text(
                                      'Google',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorsManger.kSecondaryColor,
                                      width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              width: 33.w,
                              height: 5.5.h,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      child: Icon(
                                        Icons.facebook,
                                        size: 4.h,
                                        color: const Color.fromARGB(
                                            255, 27, 127, 208),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    const Text(
                                      'Facebook',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
