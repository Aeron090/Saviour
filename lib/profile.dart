import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/Address.dart';
import 'package:savior_app/Signup.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff00006A), Color(0xff4B4BFF)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Get.to(() => Signupscreen());
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xff2DABE8).withOpacity(0.19),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage(
                      "assets/images/Group 170.png",
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "John",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      labelText: "First Name",
                      labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xffFFFFFF).withOpacity(0.4),
                      ),
                      prefixIcon: Container(
                        width: 18.w,
                        height: 20.h,
                        child: Image.asset(
                          alignment: Alignment.centerLeft,
                          "assets/images/Icon feather-mail.png",
                          scale: 1.5,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Roy",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      labelText: "Middle Name",
                      labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xffFFFFFF).withOpacity(0.4),
                      ),
                      prefixIcon: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/Icon feather-user.png",
                        scale: 1.5,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Roy",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xffFFFFFF).withOpacity(0.4),
                      ),
                      prefixIcon: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/Icon feather-user.png",
                        scale: 1.5,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4B4BFF)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Jan 26, 1993",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelText: "Date of Birth",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffFFFFFF).withOpacity(0.4),
                        ),
                        prefixIcon: Image.asset(
                          alignment: Alignment.centerLeft,
                          "assets/images/Icon material-lock-outline.png",
                          scale: 1.5,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4B4BFF)),
                        ),
                        suffixIcon: Image.asset(
                          alignment: Alignment.centerRight,
                          "assets/images/Icon ionic-ios-eye-off.png",
                          scale: 1.4,
                        )),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 80.h,
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
                        contentPadding: EdgeInsets.all(0),
                        actionsPadding: EdgeInsets.all(0),
                        actions: [
                          Container(
                            width: 357.w,
                            height: 251.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF)),
                            child: ListView(
                              children: [
                                Container(
                                  width: 357.w,
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
                                        width: 145.w,
                                      ),
                                      Text(
                                        "Note",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 110.w,
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(children: [
                                    Text(
                                      "Write your legal address name which matches the legal document which you sent for the KYC verification.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14.sp, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 31.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => Addressscreen());
                                      },
                                      child: Container(
                                        width: 250.w,
                                        height: 59.h,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: Color(0xff00006A),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Continue",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 50.h,
                    width: 213.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffFFFFFF),
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
                        "Continue",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff00006A)),
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
