import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rideend extends StatefulWidget {
  const Rideend({super.key});

  @override
  State<Rideend> createState() => _RideendState();
}

class _RideendState extends State<Rideend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Ride End",
              style: TextStyle(fontSize: 16.sp, color: Color(0xff02045C)),
            )
          ],
        ),
      ),
    );
  }
}
