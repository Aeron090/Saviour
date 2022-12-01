import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/Signup.dart';
import 'package:savior_app/login.dart';

class Comfirmpassword extends StatefulWidget {
  const Comfirmpassword({super.key});

  @override
  State<Comfirmpassword> createState() => _ComfirmpasswordState();
}

class _ComfirmpasswordState extends State<Comfirmpassword> {
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
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
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
                    width: 87.w,
                    height: 86.h,
                    child: Image.asset("assets/images/Group 9.png")),
                SizedBox(
                  height: 92.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // hintText: ".........",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xffFFFFFF).withOpacity(0.45),
                      ),
                      prefixIcon: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/Icon material-lock-outline.png",
                        scale: 1.5,
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
                        "assets/images/Icon ionic-ios-eye-off.png",
                        scale: 1.4,
                        color: Color(0xffA0A1D6),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // hintText: ".........",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xffFFFFFF).withOpacity(0.45),
                      ),
                      prefixIcon: Image.asset(
                        alignment: Alignment.centerLeft,
                        "assets/images/Icon material-lock-outline.png",
                        scale: 1.5,
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
                        "assets/images/Icon ionic-ios-eye-off.png",
                        scale: 1.4,
                        color: Color(0xffA0A1D6),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 65.h,
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
                        "Change",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xff00006A)),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
