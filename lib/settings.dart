import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/Userprofile.dart';
import 'package:savior_app/changepassword.dart';
import 'package:savior_app/privacypolicy.dart';
import 'package:savior_app/profile.dart';
import 'package:savior_app/subscriptionpayment.dart';
import 'package:savior_app/terms&conditions.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool switchValue = true;
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;
  bool isChecked = false;
  bool isChecked1 = false;
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffECECFE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.r),
              bottomRight: Radius.circular(25.r),
            ),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Color(0xff00006A), Color(0xff4B4BFF)],
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffA0A1D6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Icon ionic-ios-notifications-outline.png",
                          scale: 3.5,
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Text(
                          "Notifications",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 170.w,
                        ),
                        Container(
                          width: 34.w,
                          height: 15.h,
                          child: Transform.scale(
                            transformHitTests: false,
                            scale: .6,
                            child: CupertinoSwitch(
                              trackColor: Color(0xff62639E),
                              // This bool value toggles the switch.
                              value: switchValue,
                              activeColor: Color(0xff28C93E),

                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffA0A1D6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Icon feather-volume-1.png",
                          scale: 3.5,
                        ),
                        // SizedBox(
                        //   width: 10.w,
                        // ),
                        Text(
                          "Sound",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 170.w,
                        ),
                        Container(
                          width: 34.w,
                          height: 15.h,
                          child: Transform.scale(
                            transformHitTests: false,
                            scale: .6,
                            child: CupertinoSwitch(
                              trackColor: Color(0xff62639E),
                              // This bool value toggles the switch.
                              value: switchValue1,
                              activeColor: Color(0xff28C93E),

                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue1 = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffA0A1D6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Icon feather-map.png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Text(
                          "Map Features",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 170.w,
                        ),
                        Image.asset(
                          "assets/images/Icon ionic-ios-arrow-back.png",
                          scale: 3,
                          color: Colors.white,
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Radius",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        Container(
                          width: 34.w,
                          height: 15.h,
                          child: Transform.scale(
                            transformHitTests: false,
                            scale: .6,
                            child: CupertinoSwitch(
                              trackColor: Color(0xff62639E),
                              // This bool value toggles the switch.
                              value: switchValue2,
                              activeColor: Color(0xff28C93E),

                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue2 = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 185.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xffD2D2F1),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              checkColor: Color(0xff4B4BFF),
                              activeColor: Color.fromARGB(255, 245, 238, 238),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            "Kilometer",
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xff303030)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 185.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xffD2D2F1),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              checkColor: Color(0xff4B4BFF),
                              activeColor: Color.fromARGB(255, 245, 238, 238),
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value!;
                                });
                              }),
                          Text(
                            "Miles",
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xff303030)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4m",
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.black),
                        ),
                        Container(
                          width: 280.w,
                          child: CupertinoSlider(
                            thumbColor: Color(0xff62639E),
                            activeColor: Colors.grey,
                            min: 0.0,
                            max: 100.0,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                        Text(
                          "25m",
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.black),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hotspot",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                        Container(
                          width: 34.w,
                          height: 15.h,
                          child: Transform.scale(
                            transformHitTests: false,
                            scale: .6,
                            child: CupertinoSwitch(
                              trackColor: Color(0xff62639E),
                              // This bool value toggles the switch.
                              value: switchValue3,
                              activeColor: Color(0xff28C93E),

                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue3 = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Zone",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                        Container(
                          width: 34.w,
                          height: 15.h,
                          child: Transform.scale(
                            transformHitTests: false,
                            scale: .6,
                            child: CupertinoSwitch(
                              trackColor: Color(0xff62639E),
                              // This bool value toggles the switch.
                              value: switchValue4,
                              activeColor: Color(0xff28C93E),

                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue4 = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffA0A1D6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Icon feather-settings.png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Text(
                          "General",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 220.w,
                        ),
                        Image.asset(
                          "assets/images/Icon ionic-ios-arrow-back.png",
                          scale: 3.5,
                          color: Colors.white,
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => UserProfile1());
                },
                child: Container(
                  width: 389.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Color(0xffD2D2F1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => changepassword());
                          },
                          child: Text(
                            "Change Password",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => termsandconditions());
                          },
                          child: Text(
                            "Terms & conditions",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD2D2F1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => privacypolicy());
                          },
                          child: Text(
                            "Privacy Policy",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffA0A1D6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Group 3938.png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => subscriptionpayment());
                          },
                          child: Text(
                            "Payment Settings",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
