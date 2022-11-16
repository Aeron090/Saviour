import 'package:badges/badges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/homescreen4.dart';
import 'package:savior_app/login.dart';
import 'package:savior_app/promotions.dart';
import 'package:savior_app/reportissue.dart';
import 'package:savior_app/settings.dart';
import 'package:savior_app/subscription.dart';
import 'package:savior_app/toplocations.dart';

import 'Myrecordings.dart';
import 'Userprofile.dart';
import 'notifications.dart';

class homescreen_3 extends StatefulWidget {
  const homescreen_3({super.key});

  @override
  State<homescreen_3> createState() => _homescreen_3State();
}

class _homescreen_3State extends State<homescreen_3> {
  @override
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/iPhone 13, 12 Pro Max – 125.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.transparent,
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
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Image.asset(
              "assets/images/Group 261.png",
              scale: 1.6,
            ),
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 16.sp, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(() => notifications());
              },
              child: Row(
                children: [
                  Badge(
                    borderSide: BorderSide(color: Color(0xff11118B)),
                    position: BadgePosition.topEnd(
                      top: -4,
                      end: -4,
                    ),
                    animationType: BadgeAnimationType.scale,
                    animationDuration: Duration(milliseconds: 300),
                    badgeContent: Text(
                      '2',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                    child: Image.asset(
                      "assets/images/Icon ionic-ios-notifications.png",
                      scale: 1.6,
                    ),
                  ),
                  20.horizontalSpace
                ],
              ),
            ),
          ],
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
          child: Drawer(
            width: Get.width * 0.75,
            backgroundColor: Colors.white,
            child: Container(
              child: ListView(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: Image.asset(
                            "assets/images/Path 27555.png",
                            scale: 1.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => UserProfile1());
                      },
                      child: CircleAvatar(
                        radius: 100.r,
                        backgroundColor: Color(0xff6565E6).withOpacity(0.16),
                        child: CircleAvatar(
                          radius: 90.r,
                          child: Image.asset("assets/images/Ellipse 41.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Text(
                      "John Smith",
                      style:
                          TextStyle(fontSize: 18.sp, color: Color(0xff02045C)),
                    ),
                    Text(
                      "john.drive",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    SizedBox(height: 20.h),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff3A74FA), Color(0xff1D3A7D)]),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon ionic-md-home.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/location.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => toplocationsscreen());
                          },
                          child: Text(
                            "Top Locations",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon ionic-md-recording.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => MyRecordings());
                          },
                          child: Text(
                            "My Recordings",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Group 466.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => promotionsscreen());
                          },
                          child: Text(
                            "Promotions",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon ionic-ios-notifications.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => notifications());
                          },
                          child: Text(
                            "Notifications",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Subtraction 3.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => Subscription());
                          },
                          child: Text(
                            "Subscription",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon ionic-ios-settings.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => settings());
                          },
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon material-report.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => reportissue());
                          },
                          child: Text(
                            "Report & Issue",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        leading: ImageIcon(
                          AssetImage(
                            "assets/images/Icon metro-exit.png",
                          ),
                          size: 20,
                          color: Color(0xffA0A1D6),
                        ),
                        title: GestureDetector(
                          onTap: () {
                            Get.to(() => loginscreen());
                          },
                          child: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 85.h,
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 198.h,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => homescreen_4());
                      },
                      child: CircleAvatar(
                        radius: 60.r,
                        backgroundColor: Colors.transparent,
                        child: Image.asset("assets/images/Group 297.png"),
                      ),
                    ),
                    // Container(
                    //   width: 230.w,
                    //   height: 242.h,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(14.r),
                    //     // color: Color(0xff00006A),
                    //   ),
                    //   child: DottedBorder(
                    //     borderType: BorderType.RRect,
                    //     radius: Radius.circular(140.r),
                    //     dashPattern: [5, 5],
                    //     color: Color(0xff3E40D3),
                    //     strokeWidth: 1,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "assets/images/Group 597(1).png",
                    //               scale: 4,
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
