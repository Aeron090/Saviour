import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:savior_app/Signup.dart';
import 'package:savior_app/login.dart';

class prelogin extends StatefulWidget {
  const prelogin({super.key});

  @override
  State<prelogin> createState() => _preloginState();
}

class _preloginState extends State<prelogin> {
  bool isChecked = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.white;
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff00006A), Color(0xff4B4BFF)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 122.h,
                  ),
                  Container(
                      width: 89.w,
                      height: 86.h,
                      child: Image.asset("assets/images/Group 9.png")),
                  SizedBox(
                    height: 120.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierDismissible: true,
                        // barrierColor: Colors.white,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, setState) {
                              return AlertDialog(
                                backgroundColor: Color(0xff000000B8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                contentPadding: EdgeInsets.all(0),
                                actionsPadding: EdgeInsets.all(0),
                                actions: [
                                  Container(
                                    width: 357.w,
                                    height: 298.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Color(0xffFFFFFF)),
                                    child: ListView(
                                      children: [
                                        Container(
                                          width: 357.w,
                                          height: 59.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.r),
                                              topRight: Radius.circular(10.r),
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                Color(0xff00006A),
                                                Color(0xff4B4BFF)
                                              ],
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 125.w,
                                              ),
                                              Text(
                                                "Agreement",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 80.w,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                  size: 25,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "I have read and agreed with",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r),
                                                    ),
                                                    checkColor:
                                                        Color(0xff4B4BFF),
                                                    // fillColor: MaterialStateProperty
                                                    //     .resolveWith(getColor),
                                                    // focusColor: Colors.transparent,
                                                    activeColor: Color.fromARGB(
                                                        255, 245, 238, 238),
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value!;
                                                      });
                                                    }),
                                                Text("Terms & Conditions"),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r),
                                                    ),
                                                    checkColor:
                                                        Color(0xff4B4BFF),
                                                    // fillColor: MaterialStateProperty
                                                    //     .resolveWith(getColor),
                                                    // focusColor: Colors.transparent,
                                                    activeColor: Color.fromARGB(
                                                        255, 245, 238, 238),
                                                    value: isChecked2,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked2 = value!;
                                                      });
                                                    }),
                                                Text("Privacy Policy"),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              child: Row(children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                  child: Container(
                                                    width: 137.w,
                                                    height: 59.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                10.r),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                10.r),
                                                      ),
                                                      color: Color(0xff00006A),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Decline",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 1.w,
                                                  height: 59.h,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() => loginscreen());
                                                  },
                                                  child: Container(
                                                    width: 137.w,
                                                    height: 59.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                                10.r),
                                                        bottomRight:
                                                            Radius.circular(
                                                                10.r),
                                                      ),
                                                      color: Color(0xff4B4BFF),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Accept",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ]),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 368.w,
                      height: 50.h,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Image.asset(
                                "assets/images/Icon awesome-user-alt.png",
                                height: 20),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              "Login with Username/Phone",
                              style: TextStyle(
                                  color: Color(0xff00006A), fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    width: 368.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff3A559F),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff00000029),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                              "assets/images/Icon awesome-facebook-f.png",
                              height: 20),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    width: 368.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffDC4E41),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff00000029),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/Icon simple-google.png",
                              height: 20),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Login with Gmail",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    width: 368.w,
                    height: 50.h,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/Icon awesome-apple.png",
                              height: 20),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Login with Apple",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 280.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Signupscreen());
                    },
                    child: Container(
                      child: RichText(
                          text: TextSpan(
                              text: "Don't have an account?",
                              children: <TextSpan>[
                            TextSpan(
                                text: " Signup Today",
                                style: TextStyle(color: Color(0xffA6A6EE)))
                          ])),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
