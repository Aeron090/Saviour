import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/Updateprofile.dart';
import 'package:savior_app/profile.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class UserProfile1 extends StatefulWidget {
  const UserProfile1({super.key});

  @override
  State<UserProfile1> createState() => _UserProfile1State();
}

class _UserProfile1State extends State<UserProfile1> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
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
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 100.r,
                        backgroundColor: Color(0xff6565E6).withOpacity(0.16),
                        child: CircleAvatar(
                          radius: 90.r,
                          child: Image(
                            image: AssetImage("assets/images/Ellipse 41.png"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: -15,
                      child: Container(
                        height: 40.h,
                        child: RawMaterialButton(
                          onPressed: () {
                            Get.to(() => UpdateProfile());
                          },
                          elevation: 1,
                          fillColor: Color(0xff0A6FB6),
                          child: Image.asset(
                            "assets/images/Group 4006.png",
                            scale: 1.5,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "John Smith",
                  style: TextStyle(fontSize: 18.sp, color: Color(0xff02045C)),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "john.drive",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 389.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        spreadRadius: 0.5,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "john.smith@domain.com",
                      hintStyle: TextStyle(
                        height: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA0A1D6).withOpacity(0.45),
                      ),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffA0A1D6),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 389.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        spreadRadius: 0.5,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "+1 888-848-6960",
                        hintStyle: TextStyle(
                          height: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA0A1D6).withOpacity(0.45),
                        ),
                        border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Image.asset(
                          "assets/images/Icon feather-phone.png",
                          scale: 1.5,
                          color: Color(0xff6565E6),
                        ),
                        suffixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Icon awesome-check-circle.png",
                              scale: 5,
                            ),
                            Text(
                              "Verified",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Color(0xffA0A1D6)),
                            )
                          ],
                        )),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 389.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        spreadRadius: 0.5,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "15 Sep, 1993",
                        hintStyle: TextStyle(
                          height: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        labelText: "Date of Birth",
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA0A1D6).withOpacity(0.45),
                        ),
                        border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xffA0A1D6),
                        )),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 389.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        spreadRadius: 0.5,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "347 5th Avenue Suite 1402,",
                      hintStyle: TextStyle(
                        height: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA0A1D6).withOpacity(0.45),
                      ),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Image.asset(
                        "assets/images/location.png",
                        scale: 1,
                        color: Color(0xff6565E6),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 389.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        spreadRadius: 0.5,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "New York",
                      hintStyle: TextStyle(
                        height: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      labelText: "City",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA0A1D6).withOpacity(0.45),
                      ),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Image.asset(
                        "assets/images/Path 27558.png",
                        scale: 4,
                        color: Color(0xff6565E6),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 186.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            spreadRadius: 0.5,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "NY",
                          hintStyle: TextStyle(
                            height: 0.5,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          labelText: "State",
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA0A1D6).withOpacity(0.45),
                          ),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: Container(
                            width: 23.w,
                            child: Image.asset(
                              "assets/images/Path 27570.png",
                              scale: 4,
                              color: Color(0xff6565E6),
                            ),
                          ),
                        ),
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
                      ),
                    ),
                    Container(
                      width: 186.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            spreadRadius: 0.5,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "1402",
                          hintStyle: TextStyle(
                            height: 0.5,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          labelText: "Zip Code",
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA0A1D6).withOpacity(0.45),
                          ),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: Image.asset(
                            "assets/images/Path 27572.png",
                            scale: 4,
                            color: Color(0xff6565E6),
                          ),
                        ),
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      barrierColor: Colors.black.withOpacity(0.8),
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                      ),
                      context: context,
                      builder: (context) => StatefulBuilder(
                        builder: (BuildContext context,
                            StateSetter setState /*You can rename this!*/) {
                          return SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: Container(
                              width: 428.w,
                              height: 310.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF),
                              ),
                              child: ListView(
                                children: [
                                  Container(
                                    width: 428.w,
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
                                          width: 150.w,
                                        ),
                                        Text(
                                          "Invite Driver",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 130.w,
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
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Color(0xff6565E6)
                                                  .withOpacity(0.19),
                                              child: CircleAvatar(
                                                radius: 45,
                                                backgroundImage: AssetImage(
                                                  "assets/images/Ellipse 41.png",
                                                ),
                                                backgroundColor: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 25.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "John Smith",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xff02045C)),
                                                ),
                                                Text(
                                                  "john.drive",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Colors.black),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Divider(
                                        color: Color(0xff707070),
                                        thickness: 1.w,
                                        // height: 50,
                                        indent: 20,
                                        endIndent: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/Image 20.png",
                                                scale: 4,
                                              ),
                                              Text(
                                                "AirDrop",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/Image 21.png",
                                                scale: 4,
                                              ),
                                              Text(
                                                "Message",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/Image 22.png",
                                                scale: 4,
                                              ),
                                              Text(
                                                "Mail",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/Image 23.png",
                                                scale: 4,
                                              ),
                                              Text(
                                                "Signal",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                  // child: Text(
                                  //   "Invite Driver",
                                  //   style:
                                  //       TextStyle(fontSize: 14.sp, color: Colors.white),
                                  // ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50.h,
                    width: 213.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff02045C),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/Group 461.png",
                            scale: 3.5,
                          ),
                          Text(
                            "Invite Friends",
                            style:
                                TextStyle(fontSize: 16.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
