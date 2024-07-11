import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_booking_app/Core/Utils/Constants/Colors.dart';
import 'package:movie_booking_app/Views/Widgets/CustomTextField.dart';
import 'package:movie_booking_app/Views/Widgets/CustomText_Password.dart';
import 'package:sizer/sizer.dart';

import '../Home/HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
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
                        const CustomTextField(hint: 'Full name'),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        const CustomTextField(hint: 'Email'),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        const CustomPassTextField(hint: 'Password'),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        const CustomPassTextField(hint: 'Confirm password'),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                activeColor: ColorsManger.kSecondaryColor,
                                value: isCheck,
                                onChanged: (newValue) {
                                  setState(() {
                                    isCheck = newValue;
                                  });
                                }),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'I have read and agree to the',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 93, 92, 92),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                        text:
                                            ' Privacy policy , terms & conditions',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 188, 30, 18),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            width: 33.w,
                            height: 6.h,
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    isCheck == true
                                        ? ColorsManger.kSecondaryColor
                                        : const Color.fromARGB(255, 93, 92, 92),
                                  ),
                                ),
                                onPressed: () {
                                  Get.to(() => const HomeScreen());
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                )),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      fontSize: 11.5.sp,
                                      color: const Color.fromARGB(
                                          255, 93, 92, 92)),
                                ),
                                Text(' Log in',
                                    style: TextStyle(
                                        fontSize: 11.5.sp,
                                        color: ColorsManger.kSecondaryColor))
                              ],
                            )),
                      ],
                    ),
                  ),
                ])));
  }
}
