import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/util/custom_colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor:  AppColor.secondaryColor,
          selectedItemColor: AppColor.primaryColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp, color: AppColor.primaryColor),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp, color: AppColor.secondaryColor.withOpacity(.5)),
          items:  [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/acct.svg", color: AppColor.primaryColor,),
                label: 'Accounts'),
            BottomNavigationBarItem(
                icon:  SvgPicture.asset(
                  "assets/mkolo.svg", color: AppColor.secondaryColor.withOpacity(.5),),
                label: 'Mkolo'),
            BottomNavigationBarItem(
                icon:  Container(),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/hands.svg",
                    color: AppColor.secondaryColor.withOpacity(.5)),
                label: 'EarlyPay'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/menu.svg", color: AppColor.secondaryColor.withOpacity(.5)),
                label: 'Menu'),
          ]),
    );
  }
}
