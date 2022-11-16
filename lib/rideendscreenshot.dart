import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:savior_app/Myrecordings.dart';

class rideendSS extends StatefulWidget {
  const rideendSS({super.key});

  @override
  State<rideendSS> createState() => _rideendSSState();
}

class _rideendSSState extends State<rideendSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Ride End",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff02045C),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            40.verticalSpace,
            Image.asset(
              "assets/images/Group 3999.png",
              scale: 5,
            ),
            20.verticalSpace,
            Text(
              "Congratulation!",
              style: TextStyle(
                  fontSize: 25.sp,
                  color: Color(0xff02045C),
                  fontWeight: FontWeight.w600),
            ),
            20.verticalSpace,
            Text(
              "You have completed the ride successfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            10.verticalSpace,
            Container(
              width: 19.w,
              height: 2.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.grey,
              ),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Icon awesome-check-circle.png",
                  scale: 4.5,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text("Screenshot successfully uploaded")
              ],
            ),
            10.verticalSpace,
            Container(
              width: 389.w,
              height: 368.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(width: 1.w, color: Colors.grey),
                image: DecorationImage(
                    image: AssetImage("assets/images/Image 18@3x.png"),
                    fit: BoxFit.fill),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 37.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff000000).withOpacity(0.64),
                        ),
                        child: Image.asset(
                          "assets/images/Icon material-delete.png",
                          scale: 3.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 280.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Container(
                    width: 134.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff000000).withOpacity(0.64),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Icon material-delete.png",
                          scale: 3.5,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Change image",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 45.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyRecordings());
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
                    "Done",
                    style: TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
