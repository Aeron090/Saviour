import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:expandable/expandable.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:savior_app/helper/colors.dart';

class MyRecordings extends StatefulWidget {
  const MyRecordings({super.key});

  @override
  State<MyRecordings> createState() => _MyRecordingsState();
}

class _MyRecordingsState extends State<MyRecordings> {
  bool _containerHeight = false;
  bool _containerHeight1 = false;
  bool _containerHeight2 = false;

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
          "My Recordings",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20.h,
          ),
          AnimatedContainer(
            height: _containerHeight == true ? 274 : 220,
            width: 389.w,
            duration: Duration(milliseconds: 0),
            decoration: BoxDecoration(
                color: Color(0xffFCFCFE),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                      offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                          )),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-car.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Uber",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/Icon awesome-check-circle.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Screenshot",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(children: [
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                          DottedLine(
                            lineLength: 78.h,
                            direction: Axis.vertical,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                          ),
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                        ]),
                        SizedBox(
                          width: 10.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PICK UP",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "110 W 3rd St, New York, NY 10012, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                "DROP OFF",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "239 Greene St, New York, NY 10003, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    DottedLine(
                      lineLength: 350.w,
                      direction: Axis.horizontal,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashColor: Color(0xffA0A1D6),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    _containerHeight == true
                        ? Row(
                            children: [
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Distance",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text(
                                    "15 miles",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff303030)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 142.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Duration",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text("25 min",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff303030))),
                                ],
                              )
                            ],
                          )
                        : Container(),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _containerHeight = !_containerHeight;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Icon(
                      _containerHeight == true
                          ? Icons.arrow_drop_up_outlined
                          : Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AnimatedContainer(
            height: _containerHeight2 == true ? 274 : 220,
            width: 389.w,
            duration: Duration(milliseconds: 0),
            decoration: BoxDecoration(
                color: Color(0xffFCFCFE),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                      offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                          )),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-car.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Uber",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/Icon feather-clock.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Screenshot pending",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          color: Color(0xffC9CAEC),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Icon(
                          Icons.upload,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(children: [
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                          DottedLine(
                            lineLength: 78.h,
                            direction: Axis.vertical,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                          ),
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                        ]),
                        SizedBox(
                          width: 10.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PICK UP",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "110 W 3rd St, New York, NY 10012, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                "DROP OFF",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "239 Greene St, New York, NY 10003, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    DottedLine(
                      lineLength: 350.w,
                      direction: Axis.horizontal,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashColor: Color(0xffA0A1D6),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    _containerHeight2 == true
                        ? Row(
                            children: [
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Distance",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text(
                                    "15 miles",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff303030)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 142.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Duration",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text("25 min",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff303030))),
                                ],
                              )
                            ],
                          )
                        : Container(),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _containerHeight2 = !_containerHeight2;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Icon(
                      _containerHeight2 == true
                          ? Icons.arrow_drop_up_outlined
                          : Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AnimatedContainer(
            height: _containerHeight1 == true ? 274 : 220,
            width: 389.w,
            duration: Duration(milliseconds: 0),
            decoration: BoxDecoration(
                color: Color(0xffFCFCFE),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                      offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                          )),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-car.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Uber",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/Icon feather-clock.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Screenshot pending",
                        style: TextStyle(fontSize: 12.sp, color: black),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          color: Color(0xffC9CAEC),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Icon(
                          Icons.upload,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(children: [
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                          DottedLine(
                            lineLength: 78.h,
                            direction: Axis.vertical,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                          ),
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xff6565E6)),
                          ),
                        ]),
                        SizedBox(
                          width: 10.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PICK UP",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "110 W 3rd St, New York, NY 10012, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                "DROP OFF",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xffCBCBCC)),
                              ),
                              Text(
                                "239 Greene St, New York, NY 10003, USA",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Color(0xff303030)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    DottedLine(
                      lineLength: 350.w,
                      direction: Axis.horizontal,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashColor: Color(0xffA0A1D6),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    _containerHeight1 == true
                        ? Row(
                            children: [
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Distance",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text(
                                    "15 miles",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff303030)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 142.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Duration",
                                    style: TextStyle(
                                      color: Color(0xffCBCBCC),
                                    ),
                                  ),
                                  Text("25 min",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff303030))),
                                ],
                              )
                            ],
                          )
                        : Container(),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _containerHeight1 = !_containerHeight1;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Icon(
                      _containerHeight1 == true
                          ? Icons.arrow_drop_up_outlined
                          : Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            height: 60.h,
            margin: EdgeInsets.symmetric(horizontal: 60).w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xff02045C),
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
                "Submit",
                style: TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          30.verticalSpace,
        ],
      ),
    );
  }
}
