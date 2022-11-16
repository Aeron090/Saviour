import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savior_app/Prelogin.dart';
import 'package:savior_app/Splash.dart';
import 'package:get/get.dart';
import 'package:savior_app/forgot.dart';
import 'package:savior_app/login.dart';
import 'package:savior_app/profile.dart';

import 'Address.dart';
import 'Signup.dart';
import 'Videoupload.dart';
import 'confirmpass.dart';
import 'inprocessmsg.dart';
import 'kycverification.dart';
import 'otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.lightBlue,
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/Paymentmethod",
            getPages: [
              GetPage(
                name: "/Paymentmethod",
                page: () => SplashScreen(),
              ),
              GetPage(
                name: "/prelogin",
                page: () => SplashScreen(),
              ),
              GetPage(
                name: "/OTPverification",
                page: () => OTPverification(),
              ),
              GetPage(
                name: "/ProfileScreen",
                page: () => ProfileScreen(),
              ),
              GetPage(
                name: "/Addressscreen",
                page: () => Addressscreen(),
              ),
              GetPage(
                name: "/Comfirmpassword",
                page: () => Comfirmpassword(),
              ),
              GetPage(
                name: "/Forgotpass",
                page: () => Forgotpass(),
              ),
              GetPage(
                name: "/KYCinprocess",
                page: () => KYCinprocess(),
              ),
              GetPage(
                name: "/loginscreen",
                page: () => loginscreen(),
              ),
              GetPage(
                name: "/Signupscreen",
                page: () => Signupscreen(),
              ),
              GetPage(
                name: "/uploadingvideo",
                page: () => uploadingvideo(),
              ),
              GetPage(
                name: "/licensephotoupload",
                page: () => licensephotoupload(),
              ),
            ]);
      },
    );
  }
}
