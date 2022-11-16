import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Paymentmethod.dart';

class Joinnow extends StatefulWidget {
  const Joinnow({super.key});

  @override
  State<Joinnow> createState() => _JoinnowState();
}

class _JoinnowState extends State<Joinnow> {
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
          "Join Now",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 388.w,
            // height: 462.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.r),
                topLeft: Radius.circular(10.r),
              ),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-award.png",
                        scale: 3,
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        "Prize Pool",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 35.w,
                      ),
                      Container(
                        // width: 195.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff02045C),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon metro-dollars.png",
                        scale: 4,
                      ),
                      SizedBox(
                        width: 21.w,
                      ),
                      Text(
                        "Entry Fee",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Text(
                        "\$10",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon metro-users.png",
                        scale: 4,
                      ),
                      SizedBox(
                        width: 21.w,
                      ),
                      Text(
                        "Max Player",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 28.w,
                      ),
                      Text(
                        "500",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DottedLine(
                    lineLength: 350.w,
                    direction: Axis.horizontal,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Joined",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "100 users",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Pool Prize",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        "\$1,000",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Paymentmethod());
                    },
                    child: Container(
                      width: 351.w,
                      height: 49.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xff02045C),
                      ),
                      child: Center(
                        child: Text(
                          "BUY TICKET",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff02045C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Color(0xffA0A1D6)),
                      ),
                    ),
                    SizedBox(
                      width: 14.h,
                    ),
                    Container(
                      width: 323.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Color(0xffA0A1D6)),
                      ),
                    ),
                    SizedBox(
                      width: 14.h,
                    ),
                    Container(
                      width: 323.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 388.w,
            height: 98.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xff02045C),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Join by",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp, color: Colors.white),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/Icon feather-clock.png",
                        scale: 4,
                      ),
                      Text(
                        "02 hrs",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                      Container(
                        width: 1.w,
                        height: 19.h,
                        color: Colors.white,
                      ),
                      Text(
                        "16 min",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                      Container(
                        width: 1.w,
                        height: 19.h,
                        color: Colors.white,
                      ),
                      Text(
                        "03 sec",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
