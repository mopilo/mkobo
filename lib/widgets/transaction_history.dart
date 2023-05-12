import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/util/custom_colors.dart';

class TransactionHistory extends StatelessWidget {
  final int current;
  const TransactionHistory({super.key, required this.current});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Recent Transactions",
              style: TextStyle(
                color: const Color(0xFF042C5C),
                fontSize: current == 1 ? 14.sp : 16.sp,
                fontWeight: current == 1 ? FontWeight.w700 : FontWeight.w600,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF4181F9).withOpacity(.6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: current == 1 ? 20.w : 15.w),
                child: Text(
                  "More",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: current == 1 ? 12.sp : 14.sp,
                    fontWeight:
                        current == 1 ? FontWeight.w400 : FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
        if (current == 1)
          Column(
            children: [
              SizedBox(height: 23.h),
              item(imageContainer(), "Paid for", "Netflix"),
              SizedBox(height: 24.h),
              item(iconContainer("assets/up.svg", 0xFFFDCFE7), "Paid for",
                  "Spectranet"),
              SizedBox(height: 24.h),
              item(iconContainer("assets/down.svg", 0xFFD9FFEF),
                  "Recieved Money From FBN", "Demilade"),
              SizedBox(height: 24.h),
              item(iconContainer("assets/down.svg", 0xFFD9FFEF),
                  "Recieved Money From FBN", "Demilade"),
              SizedBox(height: 24.h),
              item(iconContainer("assets/down.svg", 0xFFD9FFEF),
                  "Recieved Money From FBN", "Demilade"),
            ],
          ),
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget imageContainer() {
    return Container(
      height: 34.h,
      width: 34.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xFFD6D8D3).withOpacity(.3),
          borderRadius: BorderRadius.circular(1.24.r)),
      child: Image.asset(
        "assets/flix.png",
      ),
    );
  }

  Widget iconContainer(icon, color) {
    return Container(
      height: 31.h,
      width: 31.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(5.r)),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }

  Widget item(child, title, subtitle) {
    return Row(
      children: [
        child,
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: const Color(0xFF263238).withOpacity(.5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: const Color(0xFF263238),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Apr 28",
              style: TextStyle(
                  color: const Color(0xFF263238).withOpacity(.5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "₦",
                    style: TextStyle(
                      color: const Color(0xFF263238),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  "-3,000.00",
                  style: TextStyle(
                      color: const Color(0xFF263238),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
