import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/subscriptiongold.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  var subs;
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 389.w,
                height: 94.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/Group 4002.png",
                        scale: 1.5,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "03 Days Left",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xff6565E6),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "You are using Trail Version",
                            style: TextStyle(
                                fontSize: 16.sp, color: Color(0xff303030)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                  int sensitivity = 8;
                  if (details.delta.dx > sensitivity) {
                    setState(() {
                      subs = 1;
                    });
                    print("object");
                    // Right Swipe
                  } else if (details.delta.dx < -sensitivity) {
                    setState(() {
                      subs = 2;
                    });
                    //Left Swipe
                  }
                },
                child: Container(
                  height: 550.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 367.h,
                        width: 400.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.r),
                            color: Color(0xff6565E6).withOpacity(0.36)),
                      ),
                      Positioned(
                        bottom: 45,
                        right: 20,
                        left: 20,
                        child: Container(
                          height: 450.h,
                          width: 322.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5.w),
                              borderRadius: BorderRadius.circular(17.r),
                              color: Color(0xffFFFFFF)),
                          child: Container(
                            width: 357.w,
                            height: 298.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(17.r),
                                color: Color(0xffFFFFFF)),
                            child: ListView(children: [
                              Container(
                                width: 357.w,
                                height: 69.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17.r),
                                    topRight: Radius.circular(17.r),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    // end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff00006A),
                                      Color(0xff4B4BFF)
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: subs == 1
                                      ? Text(
                                          "Weekly Package",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      : Text(
                                          "Monthly Package",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff6565E6),
                                          size: 20,
                                        )),
                                    SizedBox(
                                      width: 14.h,
                                    ),
                                    Container(
                                      width: 250.w,
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff6565E6),
                                          size: 20,
                                        )),
                                    SizedBox(
                                      width: 14.h,
                                    ),
                                    Container(
                                      width: 250.w,
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xff6565E6),
                                          size: 20,
                                        )),
                                    SizedBox(
                                      width: 14.h,
                                    ),
                                    Container(
                                      width: 250.w,
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 50.h,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 13),
                                        child: RichText(
                                          text: TextSpan(
                                            text: "\$",
                                            style: TextStyle(
                                                fontSize: 25.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: "",
                                            style: TextStyle(
                                                fontSize: 25.sp,
                                                color: Colors.black),
                                            children: subs == 1
                                                ? <TextSpan>[
                                                    TextSpan(
                                                        text: '8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 70,
                                                            color: Color(
                                                                0xffF17103))),
                                                    TextSpan(
                                                        text: '.00',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25.sp)),
                                                  ]
                                                : <TextSpan>[
                                                    TextSpan(
                                                        text: '24',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 70,
                                                            color: Color(
                                                                0xffF17103))),
                                                    TextSpan(
                                                        text: '.00',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25.sp)),
                                                  ]),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Per Month",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color(0xffECECFE)),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Container(
                    width: 53.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xff6565E6)),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Container(
                    width: 8.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(6.r),
                        color: Color(0xffECECFE)),
                  ),
                ],
              ),
              SizedBox(
                height: 65.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => goldpackagesubscription());
                },
                child: Container(
                  width: 214.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff02045C)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
