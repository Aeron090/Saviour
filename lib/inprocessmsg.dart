import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/login.dart';

class KYCinprocess extends StatefulWidget {
  const KYCinprocess({super.key});

  @override
  State<KYCinprocess> createState() => _KYCinprocessState();
}

class _KYCinprocessState extends State<KYCinprocess> {
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
                  child: Image.asset("assets/images/Group 9.png")),
              SizedBox(
                height: 90.h,
              ),
              Text(
                "KYC Verification is in process..",
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                width: 294.w,
                child: Text(
                  "KYC verification documents has been successfully submitted! Please be patient we will check and sent you notification here about your KYC updates or via email.",
                  style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 350.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => loginscreen());
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
                      "Back to Login",
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
