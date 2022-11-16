import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Signup.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          "Notifications",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 21.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 85.w,
                      ),
                      Text(
                        "Yesterday",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text(
                        "2 days ago",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text(
                        "5 days ago",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Text(
                        "12 Sep",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 389.w,
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA0A1D6).withOpacity(0.5),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Color(0xffA0A1D6),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff02045C)),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xffA0A1D6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Container(
                        width: 311.w,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'read more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff515151)),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
