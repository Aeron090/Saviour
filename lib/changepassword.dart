import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/settings.dart';

class changepassword extends StatefulWidget {
  const changepassword({super.key});

  @override
  State<changepassword> createState() => _changepasswordState();
}

class _changepasswordState extends State<changepassword> {
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
          "Change Password",
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
                height: 21.h,
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
                    hintText: ".......",
                    hintStyle: TextStyle(
                      height: 0.5,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    labelText: "Existing Password",
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffA0A1D6).withOpacity(0.45),
                    ),
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/Icon material-lock-outline.png",
                      scale: 1.5,
                      color: Color(0xff6565E6),
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Icon ionic-ios-eye-off.png",
                          color: Color(0xffA0A1D6).withOpacity(0.35),
                          scale: 1.4,
                        ),
                      ],
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
                    hintText: "Abcd123@123",
                    hintStyle: TextStyle(
                      height: 0.5,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    labelText: "New Password",
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffA0A1D6).withOpacity(0.45),
                    ),
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/Icon material-lock-outline.png",
                      scale: 1.5,
                      color: Color(0xff6565E6),
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Icon ionic-ios-eye-off.png",
                          color: Color(0xffA0A1D6).withOpacity(0.35),
                          scale: 1.4,
                        ),
                      ],
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
                    hintText: ".......",
                    hintStyle: TextStyle(
                      height: 0.5,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    labelText: "Confirm New Password",
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffA0A1D6).withOpacity(0.45),
                    ),
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/Icon material-lock-outline.png",
                      scale: 1.5,
                      color: Color(0xff6565E6),
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Icon ionic-ios-eye-off.png",
                          color: Color(0xffA0A1D6).withOpacity(0.35),
                          scale: 1.4,
                        ),
                      ],
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 530.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => settings());
                },
                child: Container(
                  height: 50.h,
                  width: 214.w,
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
                      "Save",
                      style:
                          TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
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
