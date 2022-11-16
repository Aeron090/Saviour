import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/radio/gf_radio.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:savior_app/home.dart';

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;

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
          "Payment Method",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 389.w,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Image 18.png",
                      scale: 4,
                    ),
                    SizedBox(
                      width: 33.w,
                    ),
                    Text(
                      "**** **** **** 1234",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff707070),
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: _value
                                    ? Color(0xff6A6A6A)
                                    : Color(0xff6A6A6A),
                                width: 1)),
                        child: Icon(
                          Icons.circle_rounded,
                          color: _value ? Color(0xff303030) : Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 389.w,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Image 19.png",
                      scale: 5.5,
                    ),
                    SizedBox(
                      width: 33.w,
                    ),
                    Text(
                      "**** **** **** 1234",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff707070),
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _value1 = !_value1;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: _value1
                                    ? Color(0xff6A6A6A)
                                    : Color(0xff6A6A6A),
                                width: 1)),
                        child: Icon(
                          Icons.circle_rounded,
                          color: _value1 ? Color(0xff303030) : Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 389.w,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/174861.png",
                      scale: 3.5,
                    ),
                    SizedBox(
                      width: 33.w,
                    ),
                    Text(
                      "**** **** **** 1234",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff707070),
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _value2 = !_value2;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: _value2
                                    ? Color(0xff6A6A6A)
                                    : Color(0xff6A6A6A),
                                width: 1)),
                        child: Icon(
                          Icons.circle_rounded,
                          color: _value2 ? Color(0xff303030) : Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 22.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xffA0A1D6)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Add New",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xffA0A1D6),
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 480.h,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    backgroundColor: Color(0xff000000B8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    actions: [
                      Container(
                          width: 357.w,
                          height: 203.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 202.w,
                                child: Text(
                                  "Are you sure to purchase Prize Pool ticket",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff303030)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      width: 142.w,
                                      height: 49.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff02045C),
                                            width: 1.5.w),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff02045C)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                          backgroundColor: Color(0xff000000B8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.r),
                                          ),
                                          actions: [
                                            Container(
                                                width: 357.w,
                                                height: 438.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    color: Color(0xffFFFFFF)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      child: CircleAvatar(
                                                        radius: 50.r,
                                                        backgroundColor: Color(
                                                                0xff6565E6)
                                                            .withOpacity(0.16),
                                                        child: CircleAvatar(
                                                          radius: 45.r,
                                                          backgroundColor:
                                                              Color(0xff02045C),
                                                          child: Icon(
                                                            Icons.check,
                                                            color: Colors.white,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Thank you",
                                                      style: TextStyle(
                                                          fontSize: 25.sp,
                                                          color: Color(
                                                              0xff02045C)),
                                                    ),
                                                    Container(
                                                      width: 216.w,
                                                      child: Text(
                                                        "you have been purchased Prize Pool Ticket",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 16.sp,
                                                            color: Color(
                                                                0xff303030)),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.to(() =>
                                                            homescreen1());
                                                      },
                                                      child: Container(
                                                        height: 50.h,
                                                        width: 214.w,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r),
                                                          color:
                                                              Color(0xff02045C),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Back to Home",
                                                            style: TextStyle(
                                                                fontSize: 16.sp,
                                                                color: Color(
                                                                    0xffFFFFFF)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 142.w,
                                      height: 49.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Color(0xff02045C),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                );
              },
              child: Container(
                width: 214.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff02045C)),
                child: Center(
                  child: Text(
                    "Continue Pay",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
