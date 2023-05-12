import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../custom_colors.dart';

class ItemWidget extends StatelessWidget {
  final String first;
  final String title;
  const ItemWidget({super.key, required this.first, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 56, width: 56,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primaryColor
          ),
          child: SvgPicture.asset(first),
        ),
        SizedBox(height: 7.h),
        Text(title, style: TextStyle(color: AppColor.primaryColor, fontSize: 12.sp))
      ]);
  }
}