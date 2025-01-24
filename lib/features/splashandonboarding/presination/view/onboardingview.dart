import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trendify/core/Theming/text_styles.dart';

import 'widgets/logoandname.dart';
import 'widgets/onboradingbutton.dart';
import 'widgets/theimageanftextabove.dart';

class Onboardingview extends StatelessWidget {
  const Onboardingview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const Logoandname(),
              const Theimageanftextabove(),
              Padding(
                padding:  EdgeInsets.only(top:  20.h,bottom: 30.h),
                child: Text(
                  'now, you can find anything you want here   \n order it deliver to you fast   ',
                  textAlign: TextAlign.center,
                  style: Textstyles.font12greybold,
                ),
              ),
              const Onboradingbutton()
            ],
          ),
        ),
      ),
    );
  }
}
