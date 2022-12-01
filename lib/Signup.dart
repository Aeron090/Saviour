import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:savior_app/login.dart';
import 'package:savior_app/otp.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff00006A), Color(0xff4B4BFF)],
        ),
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                      width: 89.w,
                      height: 86.h,
                      child: Image.asset("assets/images/Group 9.png")),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(top: 20),
                        hintText: "john.smith@domain.com",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelText: "Email Address",
                        contentPadding: EdgeInsets.only(top: 5),
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffFFFFFF).withOpacity(0.4),
                        ),
                        prefixIcon: Container(
                          width: 20.w,
                          height: 16.h,
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            "assets/images/Icon feather-mail.png",
                            scale: 1.5,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "John.Drive",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelText: "Username",
                        contentPadding: EdgeInsets.only(top: 5),
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffFFFFFF).withOpacity(0.4),
                        ),
                        prefixIcon: Image.asset(
                          alignment: Alignment.centerLeft,
                          "assets/images/Icon feather-user.png",
                          scale: 1.5,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "917-802-7036",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelText: "Phone Number",
                        contentPadding: EdgeInsets.only(top: 5),
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffFFFFFF).withOpacity(0.4),
                        ),
                        prefixIcon: Image.asset(
                          alignment: Alignment.centerLeft,
                          "assets/images/Icon feather-phone.png",
                          scale: 1.5,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "........",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.white),
                          labelText: "Password",
                          contentPadding: EdgeInsets.only(top: 5),
                          labelStyle: TextStyle(
                            fontSize: 15.sp,
                            color: Color(0xffFFFFFF).withOpacity(0.4),
                          ),
                          prefixIcon: Container(
                            width: 19.w,
                            height: 16.h,
                            child: Image.asset(
                              alignment: Alignment.centerLeft,
                              "assets/images/Icon material-lock-outline.png",
                              scale: 1.5,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff4B4BFF)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff4B4BFF)),
                          ),
                          suffixIcon: Image.asset(
                            alignment: Alignment.centerRight,
                            "assets/images/Icon ionic-ios-eye-off.png",
                            scale: 1.4,
                          )),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Abc123@123",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.white),
                          labelText: "Confirm Password",
                          contentPadding: EdgeInsets.only(top: 5),
                          labelStyle: TextStyle(
                            fontSize: 15.sp,
                            color: Color(0xffFFFFFF).withOpacity(0.4),
                          ),
                          prefixIcon: Image.asset(
                            alignment: Alignment.centerLeft,
                            "assets/images/Icon material-lock-outline.png",
                            scale: 1.5,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff4B4BFF)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff4B4BFF)),
                          ),
                          suffixIcon: Image.asset(
                            alignment: Alignment.centerRight,
                            "assets/images/Icon ionic-ios-eye-off.png",
                            scale: 1.4,
                          )),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 115.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => OTPverification(
                            ScreenType: "Signup",
                          ));
                    },
                    child: Container(
                      height: 50.h,
                      width: 213.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff00000029),
                            spreadRadius: 5,
                            blurRadius: 6,
                            offset: Offset(0, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 16.sp, color: Color(0xff00006A)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => loginscreen());
                    },
                    child: Container(
                      child: RichText(
                          text: TextSpan(
                              text: "Already have an account?",
                              children: <TextSpan>[
                            TextSpan(
                                text: " Login",
                                style: TextStyle(color: Color(0xffA6A6EE)))
                          ])),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
