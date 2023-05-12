import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, Lanre!",
                style: TextStyle(
                  color: const Color(0xFF141623),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    "Account no :",
                    style: TextStyle(
                      color: const Color(0xFF141623),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    "533423243542",
                    style: TextStyle(
                      color: const Color(0xFF141623),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 14.w),
                  SvgPicture.asset("assets/copy.svg")
                ],
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset("assets/call.svg"),
          SizedBox(width: 25.w),
          SvgPicture.asset("assets/notification.svg")
        ],
      ),
    );
  }
}