import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:savior_app/Userprofile.dart';
import 'package:savior_app/profile.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
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
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(children: [
                Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 100.r,
                        backgroundColor: Color(0xff6565E6).withOpacity(0.16),
                        child: CircleAvatar(
                          radius: 90.r,
                          child: Image(
                            image: AssetImage("assets/images/Ellipse 41.png"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: -15,
                      child: Container(
                        height: 40.h,
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 1,
                          fillColor: Color(0xff0A6FB6),
                          child: Image.asset(
                            "assets/images/Group 4005.png",
                            scale: 1.5,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "John Smith",
                  style: TextStyle(fontSize: 18.sp, color: Color(0xff02045C)),
                ),
                SizedBox(
                  height: 10.h,
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
                        hintText: "john.drive",
                        hintStyle: TextStyle(
                            height: 0.5, fontSize: 16, color: Colors.grey),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffA0A1D6).withOpacity(0.45),
                        ),
                        border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Image.asset(
                          "assets/images/Icon feather-user.png",
                          scale: 1.6,
                        )),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
                      hintText: "john.smith@domain.com",
                      hintStyle: TextStyle(
                          height: 0.5, fontSize: 16, color: Colors.grey),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA0A1D6).withOpacity(0.45),
                      ),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffA0A1D6),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
                      hintText: "+1 888-848-6960",
                      hintStyle: TextStyle(
                          height: 0.5, fontSize: 16, color: Colors.grey),
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffA0A1D6).withOpacity(0.45),
                      ),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Image.asset(
                        "assets/images/Icon feather-phone.png",
                        scale: 1.5,
                        color: Color(0xff6565E6),
                      ),
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Icon awesome-check-circle.png",
                            scale: 5,
                          ),
                          Text(
                            "Verified",
                            style: TextStyle(
                                fontSize: 10.sp, color: Color(0xffA0A1D6)),
                          )
                        ],
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 260.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => UserProfile1());
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
                        "Save",
                        style: TextStyle(
                            fontSize: 16.sp, color: Color(0xffFFFFFF)),
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
