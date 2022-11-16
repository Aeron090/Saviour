import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home.dart';

class subscriptionpayment extends StatefulWidget {
  const subscriptionpayment({super.key});

  @override
  State<subscriptionpayment> createState() => _subscriptionpaymentState();
}

class _subscriptionpaymentState extends State<subscriptionpayment> {
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
          "Subscription",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actionsPadding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            actions: [
                              Container(
                                width: 357.w,
                                height: 431.h,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 359.w,
                                      height: 77.h,
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
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 30.w),
                                            Text(
                                              "Add New Card",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30.h),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "John Smith",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                          labelText: "Card Holder",
                                          labelStyle: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xffA0A1D6)),
                                          prefixIcon: Image.asset(
                                            alignment: Alignment.centerLeft,
                                            "assets/images/Icon awesome-user-alt.png",
                                            scale: 4.5,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff707070)),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff707070)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "123 4567 8941 4568",
                                            hintStyle: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black),
                                            labelText: "Card Number",
                                            labelStyle: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xffA0A1D6)),
                                            prefixIcon: Container(
                                              width: 21.w,
                                              height: 15.h,
                                              child: Image.asset(
                                                alignment: Alignment.centerLeft,
                                                "assets/images/Icon metro-credit-card.png",
                                                scale: 4.5,
                                              ),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff707070)),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff707070)),
                                            ),
                                            suffixIcon: Image.asset(
                                              alignment: Alignment.centerRight,
                                              "assets/images/Image 17.png",
                                              scale: 4.5,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 70.h,
                                        ),
                                        Container(
                                          width: 160,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 25),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "12 / 23",
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                                labelText: "Exp. Date",
                                                labelStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xffA0A1D6)),
                                                prefixIcon: Container(
                                                  width: 21.w,
                                                  height: 15.h,
                                                  child: Image.asset(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    "assets/images/Icon metro-calendar.png",
                                                    scale: 3.5,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xff707070)),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xff707070)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Container(
                                          width: 150,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "2023",
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                                labelText: "CVC/CVV",
                                                labelStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xffA0A1D6)),
                                                prefixIcon: Container(
                                                  width: 21.w,
                                                  height: 15.h,
                                                  child: Image.asset(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    "assets/images/Group 556.png",
                                                    scale: 4.5,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xff707070)),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xff707070)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        width: 220.w,
                                        height: 48.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xff00006A),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          // border: Border.all(color: Colors.white),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "ADD CARD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
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
              ),
              SizedBox(
                height: 460.h,
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
                            height: 438.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 50.r,
                                    backgroundColor:
                                        Color(0xff6565E6).withOpacity(0.16),
                                    child: CircleAvatar(
                                      radius: 45.r,
                                      backgroundColor: Color(0xff02045C),
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
                                      color: Color(0xff02045C)),
                                ),
                                Container(
                                  width: 256.w,
                                  child: Text(
                                    "Your order has been completed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xff303030)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => homescreen1());
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 214.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Color(0xff02045C),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Back to Home",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xffFFFFFF)),
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
                  width: 214.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff02045C)),
                  child: Center(
                    child: Text(
                      "Confirm Payment",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
