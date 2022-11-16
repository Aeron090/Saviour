import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/helper/colors.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:savior_app/joinnow.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:getwidget/getwidget.dart';

class promotionsscreen extends StatefulWidget {
  const promotionsscreen({super.key});

  @override
  State<promotionsscreen> createState() => _promotionsscreenState();
}

class _promotionsscreenState extends State<promotionsscreen> {
  var selcted;

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xffCFCFEF),
          appBar: AppBar(
            title: Text(
              "Promotions",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
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
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                21.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selcted = 1;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: selcted == 1 ? purplish : Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            "My Promotions",
                            style: TextStyle(
                                color: selcted == 1 ? whitish : black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selcted = 2;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: selcted == 2 ? purplish : Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            "Leaderboard",
                            style: TextStyle(
                                color: selcted == 2 ? whitish : black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selcted = 3;
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: selcted == 3 ? purplish : Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            "Prize Pool",
                            style: TextStyle(
                                color: selcted == 3 ? whitish : black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                Column(
                  children: [
                    Text(
                      "Prize Pool Pro Driver",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                30.verticalSpace,
                selcted == 1
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TableCalendar(
                            headerVisible: false,
                            calendarFormat: CalendarFormat.week,
                            firstDay: DateTime.utc(2010, 10, 16),
                            lastDay: DateTime.utc(2030, 3, 14),
                            focusedDay: DateTime.now(),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            width: 388.w,
                            height: 1.h,
                            color: Color(0xff707070),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            "Mon, Sep 20, 4:00AM - Fri, Sep 16, 4:00 AM",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            width: 388.w,
                            height: 67.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Color(0xffA0A1D6),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Complete 60 trips to win weekly subscription plan for free.",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "26/60 trips",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff303030)),
                                ),
                                Text(
                                  "Weekly Free",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff303030),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: BarProgress(
                              margin: EdgeInsets.all(10),
                              percentage: 40.0,
                              color: Color(0xff6565E6),
                              backColor: Color(0xff02045C),
                              showPercentage: false,
                              round: true,
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Details",
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 10.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xffA0A1D6)),
                                ),
                                SizedBox(
                                  width: 14.h,
                                ),
                                Text(
                                  "60 trips needed to win promotion plans.",
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Color(0xffA0A1D6)),
                                  ),
                                  SizedBox(
                                    width: 14.h,
                                  ),
                                  Container(
                                    width: 303.w,
                                    child: Text(
                                      "Promotion plan trip detail must be validate using trip image subscription.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14.sp, color: Colors.black),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      )
                    : selcted == 2
                        ? Column(
                            children: [
                              Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 75.w,
                                          height: 42.h,
                                          color: Color(0xffA0A1D6),
                                          child: Center(
                                            child: Text(
                                              "Rank",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 83.w,
                                          height: 42.h,
                                          color: Color(0xff02045C),
                                          child: Center(
                                            child: Text(
                                              "User",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 52.w,
                                          height: 42.h,
                                          color: Color(0xffA0A1D6),
                                          child: Center(
                                            child: Text(
                                              "Total \n Trips",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72.w,
                                          height: 42.h,
                                          color: Color(0xff02045C),
                                          child: Center(
                                            child: Text(
                                              "Total \n Duration",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72.w,
                                          height: 42.h,
                                          color: Color(0xffA0A1D6),
                                          child: Center(
                                            child: Text(
                                              "Total \n Distance",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72.w,
                                          height: 42.h,
                                          color: Color(0xff02045C),
                                          child: Center(
                                            child: Text(
                                              "Country",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    widgetwithwhitecolor(),
                                    widgetwithpurplecolor(),
                                    widgetwithwhitecolor(),
                                    widgetwithpurplecolor(),
                                    widgetwithcoin(),
                                    widgetwithpurplecolor(),
                                    widgetwithwhitecolor(),
                                    widgetwithpurplecolor(),
                                    widgetwithcoin(),
                                    Container(
                                      width: double.infinity,
                                      color: Color(0xffECECFE),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 30.h,
                                          ),
                                          Text(
                                            "Your Progress Stats",
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 30.h,
                                          ),
                                          Container(
                                            width: 428.w,
                                            height: 62.h,
                                            color: Color(0xffCFCFEF),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "Prize Pool Start",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Mon - Sep 20,2022",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "04:00 AM",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                            width: 428.w,
                                            height: 62.h,
                                            color: Color(0xffCFCFEF),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 08),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "Prize Pool End",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Thu - Sep 26,2022",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "04:00 AM",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Total Trips",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xff303030)),
                                                ),
                                                Text(
                                                  "08 / 75",
                                                  style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Color(0xff303030),
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
                                            child: GFProgressBar(
                                                percentage: 0.3,
                                                lineHeight: 25,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(right: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Me - 08 trips',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        'John Smith - 75 trips',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                backgroundColor:
                                                    Color(0xff00006A),
                                                progressBarColor:
                                                    Color(0xff3E40D3)),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Total Distance",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xff303030)),
                                                ),
                                                Text(
                                                  "80 min / 300 min",
                                                  style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Color(0xff303030),
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
                                            child: GFProgressBar(
                                                percentage: 0.4,
                                                lineHeight: 25,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(right: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Me - 80 mins',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        'John Smith - 300 min',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                backgroundColor:
                                                    Color(0xff00006A),
                                                progressBarColor:
                                                    Color(0xff3E40D3)),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Total Duration",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xff303030)),
                                                ),
                                                Text(
                                                  "80 min / 300 min",
                                                  style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Color(0xff303030),
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
                                            child: GFProgressBar(
                                                percentage: 0.4,
                                                lineHeight: 25,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(right: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Me - 01:32 hrs',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        'John Smith - 07:20 hrs',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                backgroundColor:
                                                    Color(0xff00006A),
                                                progressBarColor:
                                                    Color(0xff3E40D3)),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Container(
                                            width: 388.w,
                                            height: 1.h,
                                            color: Color(0xff707070),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Details",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 17.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(vertical: 3),
                                                    child: Container(
                                                      width: 10.w,
                                                      height: 10.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          color: Color(
                                                              0xffA0A1D6)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 14.h,
                                                  ),
                                                  Container(
                                                    width: 303.w,
                                                    child: Text(
                                                      "Total trips count the total trips you made during the proze pool period.",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(vertical: 3),
                                                    child: Container(
                                                      width: 10.w,
                                                      height: 10.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          color: Color(
                                                              0xffA0A1D6)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 14.h,
                                                  ),
                                                  Container(
                                                    width: 303.w,
                                                    child: Text(
                                                      "Total distance count the total distance you made during the prize pool period.",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(vertical: 3),
                                                    child: Container(
                                                      width: 10.w,
                                                      height: 10.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          color: Color(
                                                              0xffA0A1D6)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 14.h,
                                                  ),
                                                  Container(
                                                    width: 303.w,
                                                    child: Text(
                                                      "Total duration count the total duration you made during the prize pool period.",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(vertical: 3),
                                                    child: Container(
                                                      width: 10.w,
                                                      height: 10.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          color: Color(
                                                              0xffA0A1D6)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 14.h,
                                                  ),
                                                  Container(
                                                    width: 303.w,
                                                    child: Text(
                                                      "Progress bar show the difference between your number and top player.",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  )
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                      child: Container(
                                        color: Color(0xffECECFE),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Container(
                                width: 389.w,
                                height: 206.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.95),
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xffA0A1D6).withOpacity(0.99),
                                      blurRadius: 2,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Pro Driver",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff02045C)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 13.h,
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
                                          height: 13.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Get.to(() => Joinnow());
                                              },
                                              child: Container(
                                                width: 93.w,
                                                height: 32.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r),
                                                  color: Color(0xff02045C),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Join Now",
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150.w,
                                            ),
                                            Image.asset(
                                              "assets/images/Icon metro-users.png",
                                              scale: 3.5,
                                            ),
                                            Text(
                                              "350 / 500",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffA0A1D6)),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Container(
                                width: 389.w,
                                height: 206.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.95),
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xffA0A1D6).withOpacity(0.99),
                                      blurRadius: 2,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Time Traveler",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff02045C)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 13.h,
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
                                          height: 13.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 93.w,
                                              height: 32.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                                color: Color(0xff02045C),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Join Now",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150.w,
                                            ),
                                            Image.asset(
                                              "assets/images/Icon metro-users.png",
                                              scale: 3.5,
                                            ),
                                            Text(
                                              "130 / 500",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffA0A1D6)),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Container(
                                width: 389.w,
                                height: 206.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.95),
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xffA0A1D6).withOpacity(0.99),
                                      blurRadius: 2,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "The Flash",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff02045C)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 13.h,
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
                                          height: 13.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff515151)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 93.w,
                                              height: 32.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                                color: Color(0xff02045C),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Join Now",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150.w,
                                            ),
                                            Image.asset(
                                              "assets/images/Icon metro-users.png",
                                              scale: 3.5,
                                            ),
                                            Text(
                                              "60 / 500",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffA0A1D6)),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                            ],
                          ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row widgetwithcoin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 74.w,
          height: 72.h,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30.r,
                    child: Image(
                      image: AssetImage("assets/images/Ellipse 3.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -35,
                  child: Container(
                    height: 16.h,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 1,
                      fillColor: Color(0xff3E40D3),
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                        ),
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: -35,
                  child: Container(
                    height: 17.h,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 1,
                      fillColor: Colors.transparent,
                      child: Image.asset(
                        "assets/images/Group 3965.png",
                        scale: 1.5,
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 82.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "John Smith",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 51.w,
          height: 72.h,
          child: Center(
            child: Text(
              "75",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 71.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "8 hrs",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 71.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "300 min",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 72.w,
          height: 72.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Color(0xff707070).withOpacity(0.18),
                width: 1.0.w,
              ),
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              "USA",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
      ],
    );
  }

  Container widgetwithpurplecolor() {
    return Container(
      width: 428.w,
      height: 72.h,
      color: Color(0xffCFCFEF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 74.w,
            height: 72.h,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 30.r,
                      child: Image(
                        image: AssetImage("assets/images/Ellipse 3.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -35,
                    child: Container(
                      height: 16.h,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 1,
                        fillColor: Color(0xff3E40D3),
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.sp,
                          ),
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: -35,
                    child: Container(
                      height: 17.h,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 1,
                        fillColor: Colors.transparent,
                        child: Image.asset(
                          "assets/images/Group 3967.png",
                          scale: 1.5,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16),
          ),
          Container(
            width: 82.w,
            height: 72.h,
            child: Center(
              child: Text(
                "John Smith",
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
            ),
          ),
          Container(
              width: 1.w,
              height: 50.h,
              color: Color(0xff707070).withOpacity(0.16)),
          Container(
            width: 51.w,
            height: 72.h,
            child: Center(
              child: Text(
                "75",
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16),
          ),
          Container(
            width: 71.w,
            height: 72.h,
            child: Center(
              child: Text(
                "8 hrs",
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16),
          ),
          Container(
            width: 71.w,
            height: 72.h,
            child: Center(
              child: Text(
                "300 min",
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16),
          ),
          Container(
            width: 72.w,
            height: 72.h,
            child: Center(
              child: Text(
                "USA",
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row widgetwithwhitecolor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 74.w,
          height: 72.h,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30.r,
                    child: Image(
                      image: AssetImage("assets/images/Ellipse 41.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -35,
                  child: Container(
                    height: 16.h,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 1,
                      fillColor: Color(0xff3E40D3),
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                        ),
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: -35,
                  child: Container(
                    height: 17.h,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 1,
                      fillColor: Colors.transparent,
                      child: Image.asset(
                        "assets/images/Image 24.png",
                        scale: 1.5,
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 82.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "John Smith",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 51.w,
          height: 72.h,
          child: Center(
            child: Text(
              "75",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 71.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "8 hrs",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 71.w,
          height: 72.h,
          color: Colors.white,
          child: Center(
            child: Text(
              "300 min",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
        Container(
            width: 1.w,
            height: 50.h,
            color: Color(0xff707070).withOpacity(0.16)),
        Container(
          width: 72.w,
          height: 72.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Color(0xff707070).withOpacity(0.18),
                width: 1.0.w,
              ),
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              "USA",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
          ),
        ),
      ],
    );
  }
}
