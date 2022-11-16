import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:savior_app/kycverification.dart';

class Addressscreen extends StatefulWidget {
  const Addressscreen({super.key});

  @override
  State<Addressscreen> createState() => _AddressscreenState();
}

class _AddressscreenState extends State<Addressscreen> {
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
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 64.h,
              ),
              Container(
                width: 89.w,
                height: 86.h,
                child: Image.asset(
                  "assets/images/Group 9.png",
                ),
              ),
              SizedBox(
                height: 92.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "3485 Settlers Lane",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    labelText: "Address",
                    contentPadding: EdgeInsets.only(top: 5),
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffFFFFFF).withOpacity(0.45),
                    ),
                    prefixIcon: Container(
                      width: 15.w,
                      height: 22.h,
                      child: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/461959fa-e668-4bc3-8652-0fe65463a453.png",
                        scale: 1,
                        color: Color(0xff6565E6),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff4B4BFF)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff4B4BFF)),
                    ),
                    suffixIcon: Image.asset(
                      alignment: Alignment.centerRight,
                      "assets/images/Icon material-my-location.png",
                      scale: 4,
                      color: Color(0xffA0A1D6),
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "New York",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    labelText: "City",
                    contentPadding: EdgeInsets.only(top: 5),
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffFFFFFF).withOpacity(0.45),
                    ),
                    prefixIcon: Image.asset(
                      alignment: Alignment.centerLeft,
                      "assets/images/Group 278.png",
                      scale: 4,
                      color: Color(0xff6565E6),
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
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "New York",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    labelText: "State",
                    contentPadding: EdgeInsets.only(top: 5),
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffFFFFFF).withOpacity(0.45),
                    ),
                    prefixIcon: Container(
                      width: 23.w,
                      height: 18.h,
                      child: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/Group 279.png",
                        scale: 4,
                        color: Color(0xff6565E6),
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
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "10016",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    labelText: "Postal Code",
                    contentPadding: EdgeInsets.only(top: 5),
                    labelStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffFFFFFF).withOpacity(0.45),
                    ),
                    prefixIcon: Image.asset(
                      alignment: Alignment.centerLeft,
                      "assets/images/Group 280.png",
                      scale: 4,
                      color: Color(0xff6565E6),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff4B4BFF)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff4B4BFF)),
                    ),
                    suffixIcon: Image.asset(
                      alignment: Alignment.centerRight,
                      "assets/images/Icon ionic-ios-arrow-back.png",
                      scale: 3,
                      color: Color(0xffA0A1D6),
                    ),
                  ),
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
                          height: 375.h,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(children: [
                                  Text(
                                    "This kind of sensitive information are used by our company just to verify users. Once users get verified such information will be allowed to terminate by users themselves from our system for protecting users privacy data from unethical act. Our slogan No privacy data meaning nothing to worry about leak, hack and crack...",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => licensephotoupload());
                                    },
                                    child: Container(
                                      width: 250.w,
                                      height: 59.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
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
                      "Create",
                      style:
                          TextStyle(fontSize: 16.sp, color: Color(0xff00006A)),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
