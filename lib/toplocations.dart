import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dotted_line/dotted_line.dart';

class toplocationsscreen extends StatefulWidget {
  const toplocationsscreen({super.key});

  @override
  State<toplocationsscreen> createState() => _toplocationsscreenState();
}

class _toplocationsscreenState extends State<toplocationsscreen> {
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
          "Top Locations",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 21.h,
            ),
            TopLocations(),
            SizedBox(
              height: 20.h,
            ),
            TopLocations(),
            SizedBox(
              height: 20.h,
            ),
            TopLocations(),
            SizedBox(
              height: 20.h,
            ),
            TopLocations(),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }

  Container TopLocations() {
    return Container(
      width: 389.w,
      height: 206.h,

      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color(0xffA0A1D6),
      //       blurRadius: 6,
      //       offset: Offset(0, 8),
      //     ),
      //   ],
      // ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffA0A1D6).withOpacity(0.75),
            blurRadius: 2,
            spreadRadius: 0.1,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 19.w,
            ),
            Image.asset(
              "assets/images/location.png",
              scale: 1,
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PICKUP LOCATION",
                  style: TextStyle(fontSize: 12.sp, color: Color(0xffCBCBCC)),
                ),
                Text(
                  "110 W 3rd St, New York, NY 10012, USA",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
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
          height: 12.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 19.w,
            ),
            Image.asset(
              "assets/images/Icon awesome-clock.png",
              scale: 4,
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TIME",
                  style: TextStyle(fontSize: 12.sp, color: Color(0xffCBCBCC)),
                ),
                Text(
                  "05:00 pm - 05:20 pm",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
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
          height: 12.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 19.w,
            ),
            Image.asset(
              "assets/images/Icon awesome-car.png",
              scale: 4,
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RIDES",
                  style: TextStyle(fontSize: 12.sp, color: Color(0xffCBCBCC)),
                ),
                Text(
                  "35 - 39",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
