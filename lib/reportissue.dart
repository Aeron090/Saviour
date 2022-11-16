import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class reportissue extends StatefulWidget {
  const reportissue({super.key});

  @override
  State<reportissue> createState() => _reportissueState();
}

class _reportissueState extends State<reportissue> {
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
          "Report & Issue",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20.h,
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
                  hintStyle: TextStyle(
                    height: 0.5,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  labelText: "Subject",
                  contentPadding: EdgeInsets.only(left: 20, top: 10),
                  labelStyle:
                      TextStyle(fontSize: 15.sp, color: Color(0xff707070)),
                  border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 389.w,
              height: 340.h,
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
                  hintStyle: TextStyle(
                    height: 0.5,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  labelText: "Type your message here...",
                  contentPadding: EdgeInsets.only(left: 20, top: 10),
                  labelStyle:
                      TextStyle(fontSize: 15.sp, color: Color(0xff707070)),
                  border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 82.h,
                width: 82.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle -2.png"),
                      fit: BoxFit.fill,
                      scale: 2),
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 21.w,
                          height: 21.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xff00000085),
                            ),
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.close,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                height: 82.h,
                width: 82.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle -1.png"),
                      fit: BoxFit.fill,
                      scale: 2),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 21.w,
                        height: 21.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.w,
                            color: Color(0xff00000085),
                          ),
                          borderRadius: BorderRadius.circular(100.r),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.close,
                          size: 15,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 82.h,
                width: 82.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle -2.png"),
                      fit: BoxFit.fill,
                      scale: 2),
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 21.w,
                          height: 21.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xff00000085),
                            ),
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.close,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              ),
              Image.asset(
                "assets/images/Group 3943.png",
                scale: 5,
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
