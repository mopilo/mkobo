import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkobo_assessment/core/util/widget/item_widget.dart';

enum AccountTabMaker { spend, link }

class AccountTab extends StatefulWidget {
  final int current;
  const AccountTab({super.key, required this.current});

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  AccountTabMaker accountTabMaker = AccountTabMaker.spend;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36.h,
          decoration: BoxDecoration(
              color: const Color(0xFFE6E9ED), borderRadius: BorderRadius.circular(9.r)),
          child: Row(
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      accountTabMaker = AccountTabMaker.spend;
                    });
                  },
                  child: Container(
                    height: 30.h,
                    margin: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: accountTabMaker == AccountTabMaker.spend
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: accountTabMaker == AccountTabMaker.spend
                                ? const Color(0xFFE0E0E0)
                                : Colors.transparent)),
                    child: const Text(
                      "Spending  Account",
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      accountTabMaker = AccountTabMaker.link;
                    });
                  },
                  child: Container(
                    height: 30.h,
                    margin: const EdgeInsets.all(6),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: accountTabMaker == AccountTabMaker.link
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: accountTabMaker == AccountTabMaker.link
                                ? const Color(0xFFE0E0E0)
                                : Colors.transparent)),
                    child: const Text(
                      "Linked accounts",
                    ),
                  ),
                ),
              ),
            ],
          ),

          
        ),
         SizedBox(height: 24.h),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          item("assets/brand.svg", "Transfer Money", "assets/upload.svg",
                "Pay Bills"),
          item( "assets/download.svg", "Fund Account", "assets/jar.svg",
                "Save Money"),
          item( "assets/fone.svg", "Buy Airtime", "assets/save.svg", "Earlypay")
        ],
       ),
        
      ],
    );
  }
  Widget item (first, firstTitle, second, secondTitle){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ItemWidget(first: first, title: firstTitle),
        
        if (widget.current == 0)  SizedBox(height: 35.h),
        if(widget.current == 0) ItemWidget(first: second, title: secondTitle)
      ],
    );
  }
}
