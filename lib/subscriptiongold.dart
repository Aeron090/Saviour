import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/subscriptionpayment.dart';

class goldpackagesubscription extends StatefulWidget {
  const goldpackagesubscription({super.key});

  @override
  State<goldpackagesubscription> createState() =>
      _goldpackagesubscriptionState();
}

class _goldpackagesubscriptionState extends State<goldpackagesubscription> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            "Subscription",
            style: TextStyle(fontSize: 16.sp, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 106.h,
                width: 389.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gold Package",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xffF17103),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Sep 20, 2022",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Color(0xff707070),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 246.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                          style: TextStyle(
                              fontSize: 14.sp, color: Color(0xff707070)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32, left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff303030)),
                    ),
                    Text(
                      "\$23.00",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 358.w,
                height: 1.h,
                color: Color(0xff6A6A6A).withOpacity(0.26),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32, left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tax",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff303030),
                      ),
                    ),
                    Text(
                      "\$2.30",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 358.w,
                height: 1.h,
                color: Color(0xff6A6A6A).withOpacity(0.26),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32, left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal (incl.VAT)",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xff303030),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$25.30",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 358.w,
                height: 1.h,
                color: Color(0xff6A6A6A).withOpacity(0.26),
              ),
              SizedBox(
                height: 480.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => subscriptionpayment());
                },
                child: Container(
                  width: 214.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff02045C)),
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
