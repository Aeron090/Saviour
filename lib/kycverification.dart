import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:savior_app/Videoupload.dart';
import 'package:savior_app/Videoupload.dart';

class licensephotoupload extends StatefulWidget {
  const licensephotoupload({super.key});

  @override
  State<licensephotoupload> createState() => _licensephotouploadState();
}

class _licensephotouploadState extends State<licensephotoupload> {
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
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 57.h,
              ),
              Text(
                "Know Your Client (KYC) Verification",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                width: 320.w,
                child: Text(
                    "Please verify your mentioned documents to proceed further with the SAVIOR",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14.sp)),
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                width: 388.w,
                height: 242.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: Color(0xff00006A)),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(14.r),
                  dashPattern: [8, 8],
                  color: Colors.grey,
                  strokeWidth: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Icon ionic-ios-add-circle-outline.png",
                            height: 29.h,
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Text(
                            "Upload TLC license",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 388.w,
                height: 242.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: Color(0xff00006A)),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(14.r),
                  dashPattern: [8, 8],
                  color: Colors.grey,
                  strokeWidth: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Icon ionic-ios-add-circle-outline.png",
                            height: 29.h,
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Text(
                            "Upload Photo ID",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => uploadingvideo());
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
                      style:
                          TextStyle(fontSize: 16.sp, color: Color(0xff00006A)),
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
