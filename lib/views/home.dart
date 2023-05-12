import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mkobo_assessment/core/util/custom_colors.dart';
import 'package:mkobo_assessment/widgets/card_info.dart';
import 'package:mkobo_assessment/widgets/fund2.dart';
import 'package:mkobo_assessment/widgets/fund_account.dart';
import 'package:mkobo_assessment/widgets/transaction_history.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/fund1.dart';
import '../widgets/account_tab.dart';
import '../widgets/header_widget.dart';
import '../widgets/identity.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> imgList = [
    const CardInfo(fund: Fund1(), anon: Identity()),
    const CardInfo(fund: Fund2(), anon: FundAccount())
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  color: AppColor.primaryColor),
              child: SvgPicture.asset("assets/brand.svg"),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              const HeaderWidget(),
              SizedBox(height: 10.h),
              Container(
                height: 140.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CarouselSlider(
                  carouselController: _controller,
                  items: imgList,
                  options: CarouselOptions(
                      initialPage: _current,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              SizedBox(height: 37.h),
              AccountTab(current: _current),
              SizedBox(height: 34.h),
              TransactionHistory(current: _current),
              SizedBox(height: 37.h),
              if (_current == 0)
                Text(
                  "No Recent Transactions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF263238).withOpacity(.5),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
            ],
          )),
    );
  }
}
