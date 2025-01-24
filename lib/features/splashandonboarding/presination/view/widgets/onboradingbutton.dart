import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';
import 'package:trendify/core/Theming/text_styles.dart';

class Onboradingbutton extends StatelessWidget {
  const Onboradingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric( horizontal:20.h),
      child: TextButton( onPressed:(){ },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r))),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 55)),
        backgroundColor: MaterialStateProperty.all(Colorsmanager.blackcolor),),
      child: Text('Get Started',style: Textstyles.font20blackbold.copyWith(color: Colors.white),) ,),
    );
  }
}