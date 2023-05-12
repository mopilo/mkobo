import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SvgPicture.asset("assets/user.svg"),
        SizedBox(width: 10.w),
        Text(
          "Verify  Your Identity",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 10.w),
        SvgPicture.asset("assets/forward_arrow.svg"),
      ],
    );
  }
}