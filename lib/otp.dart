import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:circular_countdown/circular_countdown.dart';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:savior_app/confirmpass.dart';
import 'package:savior_app/profile.dart';

class OTPverification extends StatefulWidget {
  final ScreenType;
  const OTPverification({super.key, this.ScreenType});

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0D1724), Color(0xff00006A), Color(0xff4B4BFF)],
        ),
      ),
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
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 64.h,
              ),
              Container(
                  width: 89.w,
                  height: 86.h,
                  child: Image.asset("assets/images/Group 9.png")),
              SizedBox(
                height: 92.h,
              ),
              Container(
                width: 358.w,
                child: Center(
                  child: Text(
                    "Wer have sent you an email containing 4 digits verification code. Please enter the codeto verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 62.h,
              ),
              OTPTextField(
                // onChanged: (value) {
                //   setState(() {
                //     AlertDialog(
                //       title: Text("Verification Code"),
                //       content: Text('Code entered is'),
                //     );
                //   });
                // },
                // controller: otpController,
                otpFieldStyle: OtpFieldStyle(
                  disabledBorderColor: Colors.transparent,
                  focusBorderColor: Colors.transparent,
                  borderColor: Colors.transparent,
                  enabledBorderColor: Colors.transparent,
                  backgroundColor: Color(0xff000000),
                ),
                obscureText: false,
                length: 6,
                width: Get.width * 0.9,

                fieldWidth: 55.w,
                spaceBetween: 5.w,

                style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.white,
                ),
                // textFieldAlignment: MainAxisAlignment.spaceAround,

                fieldStyle: FieldStyle.box,

                onCompleted: (pin) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: Color(0xff000000B8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      contentPadding: EdgeInsets.all(0),
                      actionsPadding: EdgeInsets.all(0),
                      actions: [
                        Container(
                          width: 357.w,
                          height: 298.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r),
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
                                      width: 145.w,
                                    ),
                                    Text(
                                      "Note",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 110.w,
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
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(children: [
                                  Text(
                                    "Your first, middle, last name, and birthday information should match with the legal information which you will be submitting while the verification process. Be careful you cannot update your account information later so please enter validly!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (widget.ScreenType == "Signup") {
                                        Get.to(() => ProfileScreen());
                                      }
                                      if (widget.ScreenType == "confirm") {
                                        Get.to(() => Comfirmpassword());
                                      }
                                    },
                                    child: Container(
                                      width: 250.w,
                                      height: 59.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Color(0xff00006A),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Color(0xff3A74FA),
                    //     Color(0xff1D3A7D),
                    //   ],
                    // ),
                  ),
                  child: CircularCountDownTimer(
                    duration: 60,
                    initialDuration: 0,
                    controller: CountDownController(),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3,
                    ringColor: Colors.transparent,
                    ringGradient: null,
                    fillColor: Color(0xff8386F1),
                    fillGradient: null,
                    backgroundGradient: null,
                    strokeWidth: 5.0,
                    strokeCap: StrokeCap.round,
                    textStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.MM_SS,
                    isReverse: false,
                    isReverseAnimation: false,
                    isTimerTextShown: true,
                    autoStart: true,
                    onStart: () {
                      print('Countdown Started');
                    },
                    onComplete: () {
                      print('Countdown Started');
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
