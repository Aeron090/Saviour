import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/inprocessmsg.dart';
import 'package:audio_manager/audio_manager.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class uploadingvideo extends StatefulWidget {
  const uploadingvideo({super.key});

  @override
  State<uploadingvideo> createState() => _uploadingvideoState();
}

class _uploadingvideoState extends State<uploadingvideo> {
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
          actions: [
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
                        height: 619.h,
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
                                    width: 125.w,
                                  ),
                                  Text(
                                    "Video Guide",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 78.w,
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
                            Column(children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Learn the process to verify your rideshare companies accounts with us. It’s very crucial and without verifying this information users won’t be trusted as a rideshare drivers even if they hold a tlc license.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.black),
                              ),
                              10.verticalSpace,
                              Padding(
                                padding: EdgeInsets.zero,
                                child: Container(
                                  width: 357.w,
                                  height: 370.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.r),
                                      bottomRight: Radius.circular(10.r),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/Image 18@3x.png",
                                        ),
                                        fit: BoxFit.fitHeight),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        child: Image.asset(
                                            "assets/images/Group 264.png"),
                                      ),
                                      Container(
                                        width: 280.w,
                                        child: ProgressBar(
                                          baseBarColor: Color(0xffFFFFFF),
                                          thumbColor: Color(0xff3E40D3),
                                          progressBarColor: Color(0xff3E40D3),
                                          progress:
                                              Duration(milliseconds: 1000),
                                          buffered:
                                              Duration(milliseconds: 2000),
                                          total: Duration(milliseconds: 5000),
                                          onSeek: (duration) {
                                            print(
                                                'User selected a new time: $duration');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ])
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Image.asset(
                "assets/images/Group 291.png",
                scale: 1.5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 355.w,
                child: Text(
                  "Upload 15 sec. video recording of ride sharing service you are using.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 388.w,
                height: 570.h,
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
                            "Upload video",
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
                height: 42.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => KYCinprocess());
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
                      "Submit",
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
