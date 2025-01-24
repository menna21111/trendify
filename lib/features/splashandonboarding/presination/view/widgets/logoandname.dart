import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';

import '../../../../../core/Theming/text_styles.dart';

class Logoandname extends StatelessWidget {
  const Logoandname({super.key});

  @override


  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo.png',height: 80.h,width:80.w,),
        // SizedBox(width: 10.w,),
        Text('SHOPViBES',style: Textstyles.font20blackbold.copyWith(color: Colors.orange,fontFamily: 'JosefinSans',fontSize: 26),)
      ],
    );
  }
}